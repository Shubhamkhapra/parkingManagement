<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <script src="https://kit.fontawesome.com/ef417ecd31.js" crossorigin="anonymous"></script>
    <title>Login</title>
    <!----PHP Connectivity ----->
    <?php
    include './config/connection.php';  //connection file
    $emailErr = $passErr = "";
    //Validations for input fields
    if ($_SERVER["REQUEST_METHOD"] == "POST") 
    {
        $pass = $_POST['pass'];
        //validation for email
        if (empty($_POST["email"])) 
        {
            $emailErr = "email is required";
        } else 
        {
            $email = $_POST['email'];
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) 
            {
                $emailErr = "Invalid email format";
            }
        }
        //validation for Password
        if (empty($_POST["pass"])) 
        {
            $phoneErr = "password is required";
        } else 
        {
            if (!preg_match("/^[a-z0-9]{0,10}+$/", $pass)) 
            {
                $passErr = "Invalid";
            }
        }
        //Comparision of input with database
        $q = "SELECT * from `tbl_admin` where `email`='$email' ";
        $result = mysqli_query($conn, $q);
        $row = mysqli_fetch_array($result);
        if ($row[4] == $pass) {
            echo "<script>
            window.alert('Verified');
            </script>";
            header('location:'.$url.'dashboard.php');
        } else {
            echo "<script>
            window.alert('Invalid Password');
            </script>";
            header('location:'.$url.'index.php');
        }
    }
    ?>
</head>

<body>
    <!----------Main Div ----------->
    <div class="login-div">
        <form method="post" autocomplete="off" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <!--------Div For logo ------>
            <div class="logo">
                <div class="logoimage">
                    <img src="./images/LOGGGO.jpeg" alt="Parking Logo">
                </div>
            </div>
            <!------Title -------->
            <div class="title">Login</div>
            <!-----Input fields ----->
            <div class="fields">
                <div class="email"><i class="fa-regular fa-envelope"></i><input type="email" name='email' class="user-email" placeholder="email" required />
                    <span><?php echo $emailErr ?></span>
                </div>
                <div class="password"><i class="fa-solid fa-lock"></i><input type="password" name='pass' class="pass-input" placeholder="password" />
                    <span><?php echo $passErr ?></span>
                </div>
                <button class="signin-button" name='submit'>Login</button>
            </div>    
            <!------Forgot password-------->
                <div class="link">
                    <a  class='anchor' href="forgetpass.php" >Forgot password?</a>
                </div>
        </form>
    </div>
</body>

</html>