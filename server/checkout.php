<?php
	include_once("config.php");
	include_once("tools.php");
	$sql = "SELECT name, email, team, subject, message FROM hacker";
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
	require_once("./server/template/checkout_header.html");
	if($print_count == 0)
	{
		print("NOT FOUND");
		die();	
	}
	else {
		print "<h2>队伍信息</h2>\n<div id=\"members\">\n<div id=\"person-bar\">\n";
		$counter = 0;
		foreach ($res_arr as $value) {
			print "<div class=\"person\">\n<h3>".$value["name"]."</h3>\n<p>Email -> ".$value["email"]."<p/>\n<p>组队状况 -> ".$value["team"]."<p/>\n<h3 class=\"role\">技术方向 -> ".$value["subject"]."</h3>\n</div>\n";
			$counter++;
		}
	}
	print("</div>\n</div>\n");
	require_once("./server/template/checkout_footer.html");
?>