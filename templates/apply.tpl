{% extends "base.tpl" %}
{% block title %}
<title>报名参赛 SSSTA Hackday</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
    <section id="contact" class="clearfix">
        <h1>报名参赛</h1>
        <div class="primary">
            <p class="intro">请务必保证Email和电话号码真实有效</p>
            <form method="post" action="commit.post" id="applyform">
                <div>
                    <p>信息收集表</p>
                </div>
                <div>
                    <label>姓名<span class="required">*</span></label>
                    <input name="name" type="text" id="name" value="" />
                </div>
                <div>
                    <label>Email <span class="required">*</span></label>
                    <input name="email" type="text" id="email" value="" />
                </div>
                <div>
                    <label>电话<span class="required">*</span></label>
                    <input name="phone" type="text" pattern="\d{11}" id="phone" value="" />
                </div>
                <div>
                    <label>是否完成组队<span class="required">*</span></label>
                    <select name="team" type="text" id="team">
                        <option value="已组队">已组队</option>
                        <option value="未组队">未组队</option>
                    </select>
                </div>
                <div>
                    <label>方向</label>
                    <select name="direction" type="text" id="direction">
                        <option value="Web">Web</option>
                        <option value="Android">Android</option>
                        <option value="iOS">iOS</option>
                        <option value="other">其他</option>
                    </select>
                </div>
                <div>
                    <label>个人简历</label>
                    <textarea name="description" rows="20" cols="50"  id="message" ></textarea><br /><br />
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
