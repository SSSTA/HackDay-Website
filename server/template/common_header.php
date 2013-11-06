<?php include_once("config.php"); global $SITE_ROOT, $CSS_ROOT, $JS_ROOT, $IMAGE_ROOT, $MAIN_PAGE_PATH;?>
<!DOCTYPE html>
<!--[if IE 7 ]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html> <!--<![endif]-->

<head>

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta charset="utf-8"/>
	<meta name="description" content="">
	<meta name="author" content="">

	<title>SSSTA Hackday</title>

	<link rel="stylesheet" href="<?php echo $SITE_ROOT.$CSS_ROOT;?>/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo $SITE_ROOT.$CSS_ROOT;?>/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $SITE_ROOT.$CSS_ROOT;?>/jquery.fancybox-1.3.4.css" type="text/css" />
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="<?php echo $SITE_ROOT.$CSS_ROOT;?>/hackday.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.6.1.min.js"><\/script>')</script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/bootstrap.min.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/humane.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/hackday.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/jquery.smoothscroll.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/jquery.nivo.slider.pack.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/jquery.easing-1.3.pack.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/jquery.fancybox-1.3.4.pack.js"></script>
	<script src="<?php echo $SITE_ROOT.$JS_ROOT; ?>/init.js"></script>
</head>
<body>
<!-- header-wrap -->
<div id="header-wrap">
	<header>
		<img src="<?php echo $SITE_ROOT.$IMAGE_ROOT; ?>/logo.png" width="411" height="75"/>
		<nav>
			<ul>
				<li><a href="<?php echo $MAIN_PAGE_PATH; ?>?p=index">首页</a></li>
				<li><a href="<?php echo $MAIN_PAGE_PATH; ?>?p=info">详细介绍</a></li>
				<li><a href="<?php echo $MAIN_PAGE_PATH; ?>?p=result">队伍信息</a></li>
				<li><a href="<?php echo $MAIN_PAGE_PATH; ?>?p=apply">报名参赛</a></li>
			</ul>
		</nav>
	</header>
</div>
