<?php
$redirection = array('index'  => './server/template/index.html',
					 'info'   => './server/template/info.html',
					 'show'   => './server/template/show.html',
					 'apply'  => './server/template/apply.html',
					 'result' => './server/checkout.php');
 $action = 'index';
 if(array_key_exists('p', $_GET))
 {
 	$action = $_GET["p"];
 }
 require_once("./server/template/common_header.php");
 require_once($redirection[$action]);
 require_once("./server/template/common_footer.html");
?>