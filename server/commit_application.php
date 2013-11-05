<?php
include_once("config.php");
include_once("tools.php");
$args = array();
// 从 POST 到 自定义数组的预读取 以及合法性检查
foreach ($_POST as $tag => $val) {
	if(isSQLSafe($val) && isValidInfo($tag, $val))
	{
		$args[$tag] = $val;
	}
	else
	{
		MsgPage("无效输入数据", "请查证".$showname[$tag]."的填写");
		die();
	}
}
$sql_conn = mysql_connect($HOSTNAME, $USERNAME, $PASSWORD);
if(!$sql_conn)	
{
	MsgPage("内部错误", "数据库连接失败");
	die();
}
mysql_select_db($DBNAME);
// 重复性检测
$check_target = array('email', 'phone');
foreach ($check_target as $key) {
	$value = $args[$key];
	$sql_check = "SELECT * FROM $HACKER_TABLE_NAME WHERE $key='$value'";
	$check_result = mysql_query($sql_check);
	if(mysql_affected_rows() != 0)
	{
		MsgPage("囧rz", "我们发现".$value."这个".$showname[$key]."和已有记录重复了～<p/>
			如果希望修改已有记录，请联系$ADMIN_EMAIL.");
		die();
	}
}
// 正式提交
$sql_insert = "INSERT INTO $HACKER_TABLE_NAME (name, email, phone, team, subject, message, time_stemp) VALUES('".$args['name']."','"
	.$args['email']."','".$args['phone']."','".$args['team']."','".$args['subject']."','".$args['message']."',NOW())";
if(!mysql_query($sql_insert))
{
	MsgPage("内部错误", "数据库更新失败");
	die();
}
mysql_close();
MsgPage("感谢报名", "您已成功报名本次活动<p/>如果有任何问题，请联系$ADMIN_EMAIL", true);
die();
?>