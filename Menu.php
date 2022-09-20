<?php
$path = "config/connection.php";
include "$path";

if(!isset($_SESSION['user']) & !isset($_SESSION['UserType']))  //if user session is not set
{
   //user is not logged in  redirect login page
   $_SESSION['no-login-message']="<div class='error text-center'> Please Login</div>";
   header("location:".$url.'index.php'); 

}


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Parking Management</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- BootStrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/style1.css" />
  <!-- chart js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
 
</head>
<body>
        <!-- Side bar -->
        <div class="row col-12">
            <div id="mySidenav" class="sidenav col-3">
                
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            
                <a href="<?php  echo $url; ?>dashboard.php">Dashboard</a>

                <a href="<?php echo $url; ?>token.php">Token</a>

                <a href="<?php echo $url; ?>search.php">Checkout </a>

                <a href="<?php echo $url; ?>display.php"> All Vehicles </a>

                <a href="<?php echo $url; ?>add_user.php">Add User</a>

                <a href="<?php echo $url; ?>manage_user.php">Manage User's</a>

                <a href="<?php echo $url; ?>add_category.php">Add Category</a>

                <a href="<?php echo $url; ?>manage_category.php">Manage category</a>

                <a href="<?php echo $url; ?>logout.php">Logout</a>

            </div>
            <div class="btn_style">
              <span class="menu" style="font-size:30px; cursor:pointer " onclick="openNav()">&#9776; </span>
            </div>
        
        <!-- Sidebar Function -->
        <script>
        function openNav() {
                // document.getElementById("mySidenav").style.width = "250px";
                let nav = document.getElementById("mySidenav");
                nav.style.display = "block";
                nav.style.width="250px";
                }
                function closeNav() {
                // document.getElementById("mySidenav").style.width = "0";
                let nav = document.getElementById("mySidenav");
                  nav.style.display = "none";
                }
        </script>
