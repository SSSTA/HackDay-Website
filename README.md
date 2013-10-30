HackDay-Website
===============
Web Pages for hackday


# 文件结构 #

## ./ ##

+ index.php

	用于重定向至各个功能模块

+ preprocess.php

	预处理、注册前信息确认。未来版本中将被移至他处。

## ./server/ ##
服务端主目录，极渣

+ checkout.php
	用于展示已报名hacker (注:未调整格式)

+ commit_application.php

	向数据库提交表单	

+ config.php

	数据库、文件绝对路径等环境相关配置

+ init.sql

	数据库初始化

+ input_check.php

	没有实现的用户输入合法性检查

### ./server/template/ ###

	*.html HTML文件的头部和尾部