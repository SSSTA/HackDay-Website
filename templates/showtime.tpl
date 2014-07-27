{% extends "base.tpl" %}

{% block title %}
{% if productions %}
<title>作品展示 - SSSTA Hackday</title>
{% else %}
<title>好像哪里不对 - SSSTA Hackday</title>
{% endif %}
{% endblock %}

{% block content %}
<div class="content-wrap">
    {% if count>0 %}
    <section id="portfolio">
        <h1>作品展示</h1>
        <ul class="folio-list clearfix">
        {% for production in productions %}
            <li class="folio-thumb">
                <div class="thumb"></div>
                <h3 class="entry-title">{{ production.name }}</h3>
            </li>
        {% endfor %}
        </ul>
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
    {% else %}
    <section id="about-us" class="clearfix">
        <h1>抱歉，尚无作品提交！</h1>
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
    {% endif %}
</div>
{% endblock %}
