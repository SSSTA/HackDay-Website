{% extends "bt" %}
{% block title %}
<title>队伍信息 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <h1>参赛信息</h1>
    <p>&nbsp;</p>
	<h2>队伍信息</h2>
    <div id="members">
        <div id="person-bar">
            {% for hacker in hackers %}
			<div class="person">
                <h3>{% hacker.name %}$value["name"]</h3>
                <p>Email -> hacker.email <p/>
                <p>组队状况 -> hacker.team<p/>
                <h3 class="role">技术方向 -> hacker.subject</h3>
            </div>
            {% endfor %}
        </div>
    </div>
</div>
{% endblock %}
