<?php ob_start();?>
<?php 

    include("./config/connection.php");

// destroy the session and redirect to login page

    session_destroy();

    header("location:./index.php");
     ob_end_flush();
    //.'admin/login.php'


?>