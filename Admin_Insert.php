<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Insert</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
        .bg{
            background-color: #ecf0f3;

        }
        .login_div{
            width:450px;
            height:700px;
            padding:35px;
            border-radius:40px ;
            background-color: #ecf0f3;
            box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #ffffff;
        }
        .form{
            margin-bottom: 20px;
            border-radius: 25px;
            box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #ffffff;
        }
        .fields{
            width:100%;
            padding: 0px 5px 5px 5px;
        }
        .input{
            border:none;
            outline:none;
            background: none;
            font-size: 18px;
            color:#555;
            padding:20px 10px 20px 5px;
        }
        .signin-button {
            outline: none;
            border:none;
            cursor: pointer;
            width:100%;
            height: 60px;
            border-radius: 30px;
            font-size: 20px;
            font-weight: 700;
            font-family: 'Lato', sans-serif;
            color:#fff;
            text-align: center;
            background: #24cfaa;
            box-shadow: 3px 3px 8px #b1b1b1,
                        -3px -3px 8px #ffffff;
            transition: 0.5s;
        }
        .signin-button:hover {
            background:#2fdbb6;
        }
        .signin-button:active {
            background:#1da88a;
        }
        .link {
            padding-top: 20px;
            text-align: center;
        }
        .link a {
            text-decoration: none;
            color:#aaa;
            font-size: 15px;
        }
        .logo {
            background:url("logo.jpg");
            background-size: cover;
            height: 100px;
            width:100px;
            margin:0px auto 30px;
            border-radius: 50%;
            box-shadow: 
            /* logo shadow */
            0px 0px 2px #5f5f5f,
            /* offset */
            0px 0px 0px 5px #ecf0f3,
            /*bottom right */
            8px 8px 15px #a7aaaf,
            /* top left */
            -8px -8px 15px #ffffff
            ;
        }
    </style>
    <?php
        $name = $phone_no = $email = $password = $usertype = " ";
        $nameErr = $phone_noErr = $emailErr = $passwordErr = $usertypeErr = " "; 
        
        $submit = 1;

        //Validation

        if($_SERVER["REQUEST_METHOD"] == "POST"){
                $name = ($_POST["name"]);
                if(!preg_match("/^([a-zA-Z' ]+)*$/",$name)){
                    $nameErr = "Only letters and white space allowed";
                    $submit = 0;
                }
                $phone_no = ($_POST["phone_no"]);
                if(!preg_match(" /^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$/",$phone_no)){
                    $phone_noErr = "Enter 9 digit number";
                    $submit = 0;
                }
                $email = ($_POST["email"]);
                if(!preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/",$email)){
                    $emailErr = "Invalid email format";
                    $submit = 0;
                }
                $password = ($_POST["password"]);
                if(!preg_match("([A-Z']+[a-z']+[0-9]+[^\w]+)",$password)){
                    $passwordErr = "Password must be in Order of Pa9@";
                    $submit = 0;
                }   
        }

         //  //Insert
         if(isset($_POST['submit'])){
            $Name = $_POST['name'];
            $Phone_no = $_POST['phone_no'];
            $Email = $_POST['email'];
            $Password = $_POST['password'];
            $Usertype = $_POST['usertype'];

            $conn = mysqli_connect("localhost","root","","parkingmanagement") or die("Connection Failed");
            
            if(!$submit==0){
                $sql = "INSERT INTO `tbl_admin`(`Name`,`Phone`,`Email`,`Password`,`UserType`) VALUES ('$Name','$Phone_no','$Email','$Password','$Usertype');";
                $result = mysqli_query($conn,$sql) or die("Query Unsuccessful!");
                mysqli_close($conn);
            }        
        }
    ?>
    
</head>
<body class="bg">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    
    <section class="login_div m-auto mt-3">
        <div class="logo"></div>
            <form  method="POST">
                <div class="fields">
                    <div class="form">
                        <input type="text" name="name" placeholder="Full Name" class="input" required>
                    </div>
                    <span><?php echo $nameErr;?></span>
                    <div class="form">
                        <input type="tel" name="phone_no" placeholder="Phone Number" class="input" required>
                    </div>
                    <span><?php echo $phone_noErr;?></span>
                    <div class="form">
                        <input type="email" name="email" placeholder="Email" class="input" required>
                    </div>
                    <span><?php echo $emailErr;?></span>
                    <div class="form">
                        <input type="password" name="password" placeholder="Password (eg. Pa0@)" class="input" required>
                    </div>
                    <span><?php echo $passwordErr;?></span>
                    <div class="form">
                        <select name="usertype" class="input">
                            <option value="regular" class="input">Regular</option>
                            <option value="admin" class="input">Admin</option>
                        </select>
                    </div>
                    <button type="submit" class="signin-button" name="submit">SUBMIT</button>
                </div>
            </form>
    </section>

</body>
</html>