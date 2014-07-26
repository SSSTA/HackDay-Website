{############
This is the basic template for the whole website.
Currently using template engine: TWIG
See: http://twig.sensiolabs.org
############}
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta charset="utf-8"/>
<meta name="description" content="">
<meta name="author" content="">

{% block title %}
<title>SSSTA Hackday</title>
{% endblock %}

<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" type="text/css" />
<link rel="stylesheet" href="css/hackday.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.6.1.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/humane.js"></script>
<script src="js/hackday.js"></script>
<script src="js/jquery.smoothscroll.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/jquery.easing-1.3.pack.js"></script>
<script src="js/jquery.fancybox-1.3.4.pack.js"></script>
<script src="js/init.js"></script>
</head>
<body>
<!-- nav -->
<div id="header-wrap">
    <header>
        <a href="index.html">
            <img src="img/logo.png"/>
        </a>
        <nav>
            <ul>
                <li><a href="index.html">首页</a></li>
                <li><a href="info.html">详细介绍</a></li>
                <li><a href="result.html">队伍信息</a></li>
                <li><a href="apply.html">报名参赛</a></li>
            </ul>
        </nav>
    </header>
</div>
<!-- content here -->
{% block content %}
{% endbloc %}
<!-- footer -->
<footer>
    <div class="footer-content">
        <ul class="footer-menu">
            <li><a href="index.html">首页</a></li>
            <li><a href="info.html">详细介绍</a></li>
            <li><a href="result.html">队伍信息</a></li>
            <li><a href="apply.html">报名参赛</a></li>
        </ul>
        <p class="footer-text">Copyleft 2014. Be free to fork.</p>
    </div>
</footer>

</body>
</html>
