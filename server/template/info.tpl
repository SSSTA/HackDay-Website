{% extends "base.tpl" %}
{% block title %}
<title>SSSTA Hackday - 详细介绍</title>
{% endblock %}
{% block content %}
<div class="content-wrap">
<!-- main --><!-- services -->
<section id="services" >

    <h1>Hack Day !</h1>

    <div class="row no-bottom-margin">
        <section class="col" id="main" name="main">
            <h2>比赛背景</h2>
            <hr/>

            <p class="intro">&nbsp;&nbsp;&nbsp;&nbsp;<strong>Hack Day</strong> 是一项将开发者、设计师和有创意的人聚集在一起，让他们碰撞出创新想法的24小时极限开发活动。</p>
            <p class="intro">&nbsp;&nbsp;&nbsp;&nbsp;当前在全球范围内，有<strong>Hack Day</strong>性质的活动，比如在豌豆实验室，每年都有一两天的时间，所有的豌豆们都会放下手上的正经工作，打乱了原有的分工，组成一个个新团队，开始做一些稀奇古怪、看起来跟平常做的一点关系也没有的产品。</p>
            <p class="intro">&nbsp;&nbsp;&nbsp;&nbsp;又比如<strong>Yahoo</strong> 的<strong>Open Hack Day</strong>，在<strong>Open Hack Day</strong>这一天，任何一个项目只要你觉得cool，你就可以在24小时内完成它；在这过程中，Yahoo将为参赛的工程师们提供开放产品、平台和API服务，以便于他们能有所创新。</p>
            <p class="intro">&nbsp;&nbsp;&nbsp;&nbsp;本次西电软院科协将携手豌豆荚共同举办此次<strong>Hack Day</strong>，无论你是程序员、设计师或是“IT小白”，只要你富有创新精神并善于团队合作，只要你疯狂于代码，你就是“<strong>Hack Star</strong>”！</p>

            <h2>奖项设定</h2>
            <hr/>
            <ul>
                <li><strong>最佳作品奖</strong>，奖金<strong>4000</strong>元或等价格奖品</li>
                <li><strong>最佳技术奖</strong>，奖金<strong>2000</strong>元或等价格奖品</li>
                <li><strong>最佳创意奖</strong>，奖金<strong>2000</strong>元或等价格奖品</li>
                <li><strong>最佳设计奖</strong>，奖金<strong>2000</strong>元或等价格奖品</li>
                <li><strong>参与奖</strong>，<strong>纪念T恤</strong>一份</li>
            </ul>

            <h2>比赛规则</h2>
            <hr/>
            <ul>
                <li>以小队为单位，每个队伍人数为2-4人</li>
                <li> 每个团队在开发时间结束前提交一份作品，平台、内容不限</li>
                <li> 比赛严禁剽窃他人作品，一旦发现取消比赛资格</li>
            </ul>
            <h2>评审规则</h2>
            <hr/>
            <ul>
                <li>由邀请的老师、来到西电的一位豌豆、西安GDG Manager 谢凌等人及西电优秀学生开发者担任评委</li>
                <li>评分由评委评分（50%）和队伍环评（50%）构成，计算总成绩，颁发相应奖励</li>
            </ul>
            <h2>比赛时间</h2>
            <hr/>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>11月15日-11月17日</strong>&nbsp;&nbsp;&nbsp;&nbsp;西安安电子科技大学 新校区 教学G楼3层机房</p>
            <h2>比赛日程</h2>
            <hr/>
            <h3>11月15日</h3>
            <ul>
                <li>18:30  确认相关选手到场</li>
                <li>19:00  开幕式正式开始，嘉宾致辞</li>
                <li>19:30  现场组队，亦可上台介绍自己的Idea</li>
                <li>20:15  确认组队状况，分发hackday纪念衫，分配经纪人</li>
            </ul>
            <h3>11月16日</h3>
            <ul>
                <li>11:30 确认所有队伍到场，进入开发时间</li>
                <li>12:00 进入开发时间</li>
            </ul>

            <h3>11月17日</h3>
            <ul>
                <li>0:00  继续开发</li>
                <li>11:00 开放作品展示平台，供所有作者进行上传</li>
                <li>12:00 开发结束</li>
                <li>12:30 抽签决定展示顺序，开始展示评审</li>
                <li>18:00 评审结束 颁奖</li>
            </ul>

            <h2>活动说明</h2>
            <hr/>
            <ul>
                <li>我们为参赛队伍提供一日三餐以及零食、饮用水</li>
                <li>我们为Hackday创建了一个“经纪人”体系。经纪人均为西电软院科协的同学。每个经纪人会负责2-3只队伍的饮食起居，技术支持，疑问解答。我们设定“经纪人”也是为了更好地了解相关队伍的情况，快速解决问题</li>
                <li>经纪人”会每8个小时统计一次队伍进度，以此来督促队伍并针对相应问题提供支持</li>
                <li>活动结束时我们会要求队伍提供项目说明，并推荐进行开源，我们会将所有作品在西电软院科协Hackday站点上进行展示。
                </li>
            </ul>
            <h2>报名方式</h2>
            <hr/>
            <ul>
                <li>在<strong>hacks.sssta.co</strong> 上点“<a href="<?php echo $MAIN_PAGE_PATH; ?>?p=apply"><strong>报名参赛</strong></a>”，填写自己的信息即为报名，请保证信息正确。</li>
                <li>若有其他问题，请您发送邮件至问题反馈信箱<strong>hacks@sssta.co</strong>询问。</li>
                <li>若网站报名不成功，亦请您发送邮件至<strong>hacks@sssta.co</strong>，主题为“hackday报名 ”，内容为报名关队伍信息（包括姓名，年级，电话，邮箱）。</li>
            </ul> 
        </section>
    </div>
<!-- main --><!-- services -->
{% endblock %}
