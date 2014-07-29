{% extends "base.tpl" %}
{% block title %}
<title>出错了 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <section id="about-us" class="clearfix">
        <h1>{{ title }}</h1>
        <p>{{ text }}</p>
        <input type="button" value="返回" class="button" onclick="history.back()">
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
</div>
{% endblock %}
