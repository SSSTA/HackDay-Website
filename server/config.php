<?php
// 配置数据库
	$HOSTNAME = 'localhost';
	$USERNAME = 'dbkeeper';
	$PASSWORD = 'dbkeeper';
	$DBNAME   = 'hackday_db';
	$HACKER_TABLE_NAME = 'hacker';
	$TEAM_TABLE_NAME = 'team';
// 配置通用变量
	$tags = array('name', 'email', 'phone', 'team', 'subject', 'message');
	$showname = array('name'   => "姓名",
 				  	  'email'  => "E-mail",
 				  	  'phone'  => "联系电话",
 				  	  'team'   => "组队状况",
 				  	  'subject'=> "方向",
 				  	  'message'=> "个人简历");
	// 不建议写上http：// 文本代换之后可能会出事
	$MAIN_PAGE_PATH = "http://127.0.0.1/www/HackDay/index.html";
	$ADMIN_EMAIL = "neveralso@gamil.com";
?>