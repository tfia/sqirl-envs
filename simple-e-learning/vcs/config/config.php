<?php 
ob_start(); 
session_start();

$timezone = date_default_timezone_set("Asia/Manila");
$con = mysqli_connect("database", "user", "example", "vcs_db");

if(mysqli_connect_errno())
{
 echo "Failed to connect" . mysqli_connect_errno();
}
?>