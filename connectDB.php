<?php
	$host = 'localhost';
	$user = 'root';
	$password = '';
	$database = 'project1';

	$cid = mysqli_connect($host,$user,$password,$database) or die("Unable to connect to MySQL or database");
	//  if($cid){echo 'yes';}
?>