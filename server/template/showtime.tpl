{% extendstends "base.tpl" %}
{% block title %}
<title>作品展示 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <section id="portfolio">
        <h1>作品展示</h1>
        <ul class="folio-list clearfix">
        {% for production in productions %}
            <li class="folio-thumb">
                <div class="thumb"></div>
                <h3 class="entry-title">{{ production.name }}</h3>
            </li>
        {% endblock %}
        </ul>
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
</div>
{% entry %}
