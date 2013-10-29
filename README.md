HackDay-Website
===============
Web Pages for hackday
# 文件结构 #

## ./server/ ##
服务端主目录，极渣

+ ommit_application.php

	向数据库提交表单	

+ config.php

	数据库、文件绝对路径等环境相关配置

+ init.sql

	数据库初始化

+ input_check.php

	没有实现的用户输入合法性检查

+ preprocess.php

	预处理、注册前信息确认

### ./server/template/ ###

	*.html HTML文件的头部和尾部，为了不引入现有template框架，这种填充方案是手动的