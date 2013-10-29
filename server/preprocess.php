	<?php

// 导入需要用的函数
include_once("config.php");
include_once("input_check.php");
// 从 POST 到 自定义数组的预读取 以及合法性检查
$args = array();
foreach ($_POST as $tag => $val) {
	if(isSQLSafe($val) && isValidInfo($tag, $val))
	{
		$args[$tag] = $val;
	}
	else
	{
		handleIllegalUsrInput("无效输入数据", "请查证".$showname[$tag]."的填写");
		die();
	}
}

// 加载HTML文件的头部
require_once("./template/common_header.html");
require_once("./template/confirm_head.html");

// 输出预览信息
// 不把这层div留在模板里是为了把他们放在这里给人看的
print "<div class=\"person blue\" id=\"person-5\">";
foreach ($args as $key => $value) {
	print "<h3>".$showname[$key]."</h3>";
	print "<p>&emsp;".$value."</p>";
}
print "</div>";

// 构造不可见的form
// 求不吐槽, 这倒霉主意是CSDN给的
print "<section id=\"hiddensection\" class=\"clearfix\"><div class=\"primary\">\n";
print "<form method=\"post\" action=\"commit_application.php\" id=\"hiddenform\">\n";
foreach ($args as $key => $value) {
	print "<input name=\"$key\" id=\"$key\" type=\"hidden\" value=\"$value\"/>\n";
}
print "<input type=\"submit\" value=\"确认提交\" class=\"button\"></form>\n";
print "<input type=button value=返回修改 onclick=\"window.history.go(-1)\">";
print "</div>\n</section>\n";

// 加载HTML文件的尾部
require_once("./template/confirm_tail.html");
require_once("./template/common_footer.html");
?>