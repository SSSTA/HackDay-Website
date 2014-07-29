#encoding=utf-8
import re

direction_allow = {"Android", "iOS", "Web", "other"}
team_allow = {"已组队": True, "未组队": False}
email_re = r'[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}'
key_name = {
    "name": "姓名",
    "email": "Email",
    "phone": "联系电话",
    "team": "是否组队",
    "direction": "方向",
    "description": "个人简历"
}


def mongo_free(raw):
    return raw


def check_in(collection):
    if isinstance(collection, dict):
        return lambda x: x in collection, lambda x: collection[x]
    else:
        return lambda x: x in collection, mongo_free


def check_pattern(pattern):
    c_pattern = re.compile(pattern)

    def _check(raw):
        # This works in >=3.4.0
        return c_pattern.fullmatch(raw)

    return _check, mongo_free


form_keys = {"name": (1, 16, check_pattern(r'.{1,32}')),
             "email": (6, 32, check_pattern(email_re)),
             "phone": (11, 11, check_pattern(r'\d{11}')),
             "team": (3, 3, check_in(team_allow)),
             "direction": (3, 7, check_in(direction_allow)),
             "description": (0, 150, check_pattern(r'.{0,300}'))
}


def check_form(form: dict):
    new_form = dict()
    for key, value in form.items():
        shortest, longest, (vaildp, reform) = form_keys[key]
        if not shortest <= len(value) <= longest:
            return None, key
        if not vaildp(value):
            return None, key
        new_form[key] = reform(value)
    return new_form, None
