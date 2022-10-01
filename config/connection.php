<?php

//start session
session_start();


//create constants to store Non repeating values
// $dsn = 'localhost:3306';
// $user = 'shubham';
// $password = 'Shubham21@';
// $DB_NAME_MY = 'parkingManagment';
// $url = "http://myphp.com/parkingManagement/";

$dsn = 'localhost';
$user = "id19568548_team2";
$password = "5cHABdfHy3m*ky2!";
$DB_NAME_MY = "id19568548_parkingmanagement";
$url = "";
$conn = mysqli_connect($dsn, $user, $password) ;
	if (mysqli_connect_errno())
		{
			echo "failed to connect to Mysql: ".mysqli_connect_errno();
			exit();
		}
	$db_select = mysqli_select_db($conn, $DB_NAME_MY) or die("Unable to connect query");
?>


