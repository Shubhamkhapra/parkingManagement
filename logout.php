
<?php 

    include("./config/connection.php");

// destroy the session and redirect to login page

    session_destroy();

    header("location:".$url);
    //.'admin/login.php'


?>