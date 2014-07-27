{% extends "base.tpl" %}
{% block title %}
<title>确认信息 - SSSTA Hackday</title>
{% endblock %}
{% block contact %}
<div class="content-wrap">
    <section id="about-us" class="clearfix">
        <h1>确认信息</h1>
        <div class="primary">
            <h2>队伍信息</h2>
{# 输出预览信息 #}
            <div class="person blue" id="person-5">
                {% for key in info|keys %}
                <h3>".$showname[$key]."</h3>
                <p>&emsp;".$value."</p>
                {% endfor %}
            </div>

{% 构造不可见的form #}
{% 求不吐槽, 这倒霉主意是CSDN给的 #}
            <section id="hiddensection" class="clearfix">
                <div class="primary">
                    <form method="post" action="commit_application.php" id="hiddenform">
                    {% for key in info|keys %}
    	            <input name="$key" id="$key" type="hidden" value="$value"/>
                    {% endfor %}
                    <input type="submit" value="确认提交" class="button"></form>\n";
                    <input type=button value=返回修改 onclick="window.history.go(-1)">";
                </div>
            </section>
        </div>
    <a class="back-to-top" href="#main">Back to Top</a>
    </section>
</div>
{% endblock %}
