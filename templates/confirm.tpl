{% extends "base.tpl" %}
{% block title %}
<title>确认信息 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <section id="about-us" class="clearfix">
        <h1>确认信息</h1>
        <div class="primary">
            <h2>队伍信息</h2>
{# 输出预览信息 #}
            <div class="person blue" id="person-5">
                {% for key, value in info.items() %}
                <h3>{{ key_name[key] }}</h3>
                <p>{{ value }}</p>
                {% endfor %}
            </div>
{# 提交与返回按钮 #}
            <section id="submit" class="clearfix">
                <div class="primary">
                    <form method="post" action="" id="hiddenform">
                        <input type=button value="确认提交" class="button" onclick="location.href='register.get';">
                        <input type=button value="返回修改" class="button" onclick="history.back();">
                    </form>
                </div>
            </section>
        </div>
    <a class="back-to-top" href="#main">Back to Top</a>
    </section>
</div>
{% endblock %}
