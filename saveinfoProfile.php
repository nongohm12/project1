<?php
session_start();
include('connectDB.php');
$mem_username = $_SESSION['mem_username'];
$mem_password = $_POST['mem_password'];
$mem_fname = $_POST['mem_fname'];
$mem_lname = $_POST['mem_lname'];
$mem_email = $_POST['mem_email'];
$mem_tel = $_POST['mem_tel'];


$sql = "update member set
mem_password = '".$mem_password."',
mem_fname = '".$mem_fname."',
mem_lname = '".$mem_lname."',
mem_email = '".$mem_email."',
mem_tel = '".$mem_tel."'
where mem_username = '".$mem_username."'";

$query = mysqli_query($cid,$sql);

?>