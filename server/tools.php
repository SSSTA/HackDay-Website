<?php
include_once("config.php");
	// 检查用户输入是不是SQL安全的
	// 眼下不着急实现...
	function isSQLSafe($str)
	{
		return true;
	}
	// 检查用户输入是不是合理的
	// 眼下不着急实现 + 1
	function isValidInfo($type_name, $str)
	{
		if(strlen($str) > 0)
		{
			return true;
		} else {
			return false;
		}
	}
	// 跳转至error页面, 打印错误信息以及一颗返回键
	function handleErrorRighthere($errortype, $describtion)
	{
		// require_once("./template/common_header.html");
		print "<div class=\"content-wrap\">
				<div class=\"inner_copyright\">Collect from<a href=\"http:\/\/www.cssmoban.com/\" target=\"_blank\" title=\"ģ��֮��\">ģ��֮��</a>
				</div> <section id=\"about-us\" class=\"clearfix\">
			   <h1>$errortype</h1>
			   <h2>$describtion</h2>
			   <input type=button value=后退 onclick=\"window.history.go(-1)\">
			   </section></div>";
		// require_once("./template/common_footer.html");
	}
	/* ################################
	handleError commitSuccess 均已弃用！！
	   ################################ */
	function handleError($errortype, $describtion)
	{
		require_once("./template/common_header.html");
		print "<div class=\"content-wrap\">
				<div class=\"inner_copyright\">Collect from<a href=\"http:\/\/www.cssmoban.com/\" target=\"_blank\" title=\"ģ��֮��\">ģ��֮��</a>
				</div> <section id=\"about-us\" class=\"clearfix\">
			   <h1>$errortype</h1>
			   <h2>$describtion</h2>
			   <input type=button value=后退 onclick=\"window.history.go(-1)\">
			   </section></div>";
		require_once("./template/common_footer.html");
	}

	function commitSuccess()
	{
		global $MAIN_PAGE_PATH;
		print "<div class=\"content-wrap\">
				<div class=\"inner_copyright\">Collect from<a href=\"http:\/\/www.cssmoban.com/\" target=\"_blank\" title=\"ģ��֮��\">ģ��֮��</a>
				</div> <section id=\"about-us\" class=\"clearfix\">
			   <h1>感谢报名</h1>
			   <h2>您已成功报名本次活动</h2>
			   <input type=button value=后退 onclick=\"window.location.href='$MAIN_PAGE_PATH'\">
			   </section></div>";
	}
	/* ################################
			目前用于生成错误的方法
	   ################################ */
	function MsgPage($title, $content, $back_to_home = false)
	{
		require_once("./template/common_header.php");
		print "<div class=\"content-wrap\">\n
				<div class=\"inner_copyright\">Collect from<a href=\"http:\/\/www.cssmoban.com/\" target=\"_blank\" title=\"ģ��֮��\">ģ��֮��</a>\n
				</div> <section id=\"about-us\" class=\"clearfix\">\n
			   <h1>$title</h1>\n
			   <h2>$content</h2>\n";
			   if($back_to_home)
			   {
			   		print "<input type=button value=后退 onclick=\"window.location.href='$MAIN_PAGE_PATH'\">";
			   }
			   else
			   {
			   		print "<input type=button value=后退 onclick=\"window.history.go(-1)\">\n";
			   }
			   print "</section></div>";
		require_once("./template/common_footer.html");
	}
?>