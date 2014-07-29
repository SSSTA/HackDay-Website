#encoding=utf-8
from flask import Flask, request, session, jsonify, render_template, redirect, url_for
from pymongo import MongoClient
from json import dumps, loads
from utils import check_form, key_name

app = Flask(__name__)
# $md5sum <<< "SSSTA Hackday secret key"
app.secret_key = "9e38117ea7ae309ff41dc1dd"
mongo = MongoClient()
hackday_db = mongo.hackday
form_keys = {"name", "email", "phone", "team", "skill", "description"}


@app.route('/hackers.html')
def show_hackers():
    hackers = hackday_db.hacker.find()
    count = hackers.count()
    return render_template('hackers.tpl', hackers=hackers, count=count)


@app.route('/showtime.html')
def showtime():
    productions = hackday_db.production.find()
    count = productions.count()
    return render_template('showtime.tpl', productions=productions, count=count)


@app.route('/commit.post', methods=["POST"])
def commit_post():
    commit_form = {key: value[0] for key, value in dict(request.form).items()}
    print(commit_form)
    new_form, err_key = check_form(commit_form)
    print(new_form)
    if new_form:
        session['commit_form'] = dumps(new_form)
        return render_template('confirm.tpl', info=new_form, key_name=key_name)
    else:
        return render_template('common_error.tpl',
                               title="%s填写有误" % err_key,
                               text="那个，这个表有那么难填...吗？")


@app.route('/register.get', methods=["GET"])
def register_get():
    if "commit_form" in session:
        try:
            hacker = loads(session["commit_form"])
            hackday_db.hacker.insert(hacker)
        except Exception:
            print("DB-ERROR")
            return render_template('common_error.tpl',
                                   title="提交注册时发生了系统异常囧rz",
                                   text="But WTF...?!")
        else:
            try:
                session.pop("commit_form", None)
            except Exception as ignored:
                print("success but session.pop failed.")
            else:
                print("success.")
            finally:
                return redirect('/hackers.html', 301)
    else:
        return redirect('/apply.html', 301)


@app.route('/history.get', methods=["GET"])
def history_get():
    if "commit_form" in session:
        return jsonify(avaliable=True, **session['commit_form'])
    else:
        return jsonify(avaliable=False)


def main():
    app.run(debug=True)


if __name__ == '__main__':
    main()
