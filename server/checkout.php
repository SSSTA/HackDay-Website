<?php
	include_once("config.php");
	include_once("tools.php");
	$sql = "SELECT name, team, subject, message FROM hacker";
	$conn = mysql_connect($HOSTNAME, $USERNAME, $PASSWORD);
	mysql_select_db($DBNAME);
	if(!$conn)
	{
		handleError("内部错误", "数据库连接失败");
		die();
	}
	$print_count = 0;
	$res_arr = array();
	$query_res = mysql_query($sql);
	while($elem = mysql_fetch_array($query_res, MYSQL_ASSOC))
	{
		$print_count++;
    	$res_arr[] = $elem;
	}
	// 打表
	require_once("./server/template/checkout_header.html");
	print("<div><table>");
	if($print_count == 0)
	{
		print("NOT FOUND");
		die();	
	}
	else {
		print "<div class=\"primary\"><h2>队伍信息</h2>\n<div class=\"person blue\" id=\"person-5\">\n";
		foreach ($res_arr as $value) {
			print "<h3> >> ".$value["name"]."</h3>\n组队状况 -> ".$value["team"]."<p/>技术方向 -> ".$value["subject"]."</p>\n";
			// print("<tr><td>".$value["name"]."<br/>".$value["subject"]."<br/>".$value["message"]."</td></tr>");
		}
	}
	print("</div></table></div>");
	require_once("./server/template/checkout_footer.html");
?>