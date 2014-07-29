{% extends "base.tpl" %}
{% block title %}
<title>作品提交 - SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <section id="contact" class="clearfix">
        <h1>作品提交</h1>
        <div class="primary">
            <form method="post" action="commit.post" id="applyform">
                <div>
                    <p>作品信息收集表</p>
                </div>
                <div>
                    <label>作品名称<span class="required">*</span></label>
                </div>
                <div>
                    <label>制作团队<span class="required">*</span></label>
                </div>
                <div>
                    <label>团队成员<span class="required">*</span></label>
                </div>
                <div>
                    <label>作品简介</label>
                </div>
                <div>
                    <label>截图</label>
                </div>
                <div>
   			        <input type="submit" value="提交" class="button">
    			    <input type="reset"  value="重置" class="button">
   			    </div>
            </form>
        </div>
        <aside>
            <h2>填写注意事项</h2>
            <ul>
                <li>请认真填写并核对报名信息</li>
                <br/>
                <li>若有其他问题，请您发送邮件至问题反馈信箱<strong>hacks@sssta.co</strong>询问</li>
                <br/>
                <li>若网站报名不成功，亦请您发送邮件至hacks@sssta.co，主题为“hackday报名 ”，内容为报名关队伍信息（包括姓名，年级，电话，邮箱）</li>
            </ul>
        </aside>
        <a class="back-to-top" href="#main">Back to Top</a>
    </section>
</div>
{% endblock %}
