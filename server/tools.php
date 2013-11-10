<?php
include_once("config.php");
	// 检查用户输入是不是SQL安全的
	function isSQLSafe($str)
	{
		return true;
	}
	// 检查用户输入是不是合理的
	function isValidInfo($type_name, $str)
	{
		global $STRLEN_LIMIT;
		if((strlen($str) == 0) && (strlen($str) >= $STRLEN_LIMIT[$type_name]))
		{
			return false;
		}
		if($type_name == 'email')
		{
			return filter_var($str, FILTER_VALIDATE_EMAIL);
		}
		if($type_name == 'phone')
		{
			$check_phonenumber = filter_var($str, FILTER_SANITIZE_NUMBER_INT);
			if($check_phonenumber == false || strlen($check_phonenumber) != strlen($str))
			{
				return false;
			}
		}
		else
		{
			$check_phonenumber = filter_var($str, FILTER_SANITIZE_STRING);
			if($check_phonenumber == false || strlen($check_phonenumber) != strlen($str))
			{
				return false;
			}
		}
		return true;
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
	}
	/* ################################
			目前用于生成错误的方法
	   ################################ */
	function MsgPage($title, $content, $back_to_home = false)
	{
		global $MAIN_PAGE_PATH;
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