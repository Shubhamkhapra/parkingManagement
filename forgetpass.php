<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/forgetpass.css">
    <script src="https://kit.fontawesome.com/ef417ecd31.js" crossorigin="anonymous"></script>
    <title>Forget Password</title>
    <?php
    include './config/connection.php';   //Connection file
    if ($_SERVER["REQUEST_METHOD"] == "POST") 
    {
     $email = $_POST['email'];
     $phone= $_POST['phone'];
     //Comparison of input from database
     $q = "SELECT * from `tbl_admin` where `email`='$email' ";
     $result = mysqli_query($conn, $q);
     $row = mysqli_fetch_array($result);
     if ($row[3] == $phone) 
     {
        //Changing password in database
        $password = $_POST["pass"];
        $qu="UPDATE `tbl_admin` SET Password= '$password' where `email`='$email' ";
        $res = mysqli_query($conn, $qu);
        if($res == true)
        {
            echo "<script> 
            window.alert('Password successfully changed');
            </script>";
            header('location:'.$url.'index.php');
        }
     } 
     else 
     {
         echo "<script>
         window.alert('Invalid User');
         </script>";
         header('location:'.$url.'forgetpass.php');
     }
    }
    ?>
</head>

<body>
    <!----Main div ----->
    <div class="login-div">
        <form method="post" autocomplete='off' action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <!----Div for logo----->
            <div class="logo">
                <div class="logoimage">
                    <img src="images/loggo.jpeg" alt="Parking Logo">
                </div>
            </div>
            <!------Title------>
            <div class="title">Forgot Password?</div>
            <!---Div for input---->
            <div class="fields">
                <div class="email"><i class="fa-regular fa-envelope"></i><input type="email" name='email' class="user-email" placeholder="email" required />
                </div>
                <div class="email"><i class="fa-solid fa-phone"></i><input type="tel" name='phone' class="user-email" placeholder="Phone Number" required />
                </div>
                <div class="password"><i class="fa-solid fa-lock"></i><input type="password" name='pass' class="pass-input" placeholder=" Newpassword" />
                </div>
                <button class="signin-button" name='submit'>Login</button>
            </div>
        </form>
    </div>
</body>

</html>