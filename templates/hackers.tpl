{% extends "base.tpl" %}
{% block title %}
<title>队伍信息 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    {% if count>0 %}
    <section>
        <h1>参赛信息</h1>
        <p>&nbsp;</p>
        <h2>队伍信息</h2>
        <div id="members">
            <div id="person-bar">
                {% for hacker in hackers %}
                <div class="person">
                    <h3>{{ hacker["name"] }}</h3>
                    <p>Email -> {{ hacker["email"] }}<p/>
                    <p>组队状况 -> {{ hacker["team"] }}<p/>
                    <h3 class="role">技术方向 -> {{ hacker["subject"] }}</h3>
                </div>
                {% endfor %}
            </div>
        </div>
    </section>
    {% else %}
    <section id="about-us" class="clearfix">
        <h1>抱歉，尚无Hacker报名！</h1>
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
    {% endif %}
</div>
{% endblock %}
