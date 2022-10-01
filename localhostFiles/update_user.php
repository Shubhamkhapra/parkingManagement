<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";

if(isset($_SESSION['UserType']))
  {
    
    $check = $_SESSION['UserType'];
    if($check == "Regular")
    header("location:".$url."token.php");
  }
?>

<!-- Add user  -->

<!-- validation section -->
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
                // if(!preg_match("/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/",$email)){
                //     $emailErr = "Invalid email format";
                //     $submit = 0;
                // }
                $password = ($_POST["password"]);
                if(!preg_match("([A-Z']+[a-z']+[0-9]+[^\w]+)",$password)){
                    $passwordErr = "Password must be in Order of Pa9@";
                    $submit = 0;
                }   
        }
        //  Validation section end

        // get data from manage_user start
            if(isset($_GET['id'])){
                $id = $_GET['id'];
                //query to get data
                $sqlUser = "SELECT * FROM `tbl_admin` WHERE `id`='$id'";
                $sqlUserRes = mysqli_query($conn, $sqlUser);
                $count = mysqli_num_rows($sqlUserRes);
                if($count ==1){
                    $row = mysqli_fetch_assoc($sqlUserRes);
                    $rName = $row['Name'];
                    $rEmail = $row['Email'];
                    $rPhone = $row['Phone'];
                    $rPass = $row['Password'];
                    $rUserType = $row['UserType'];
                }else{
                    echo "<script> alert('No user found')</script>";
                }
            }else{
                echo "<script> alert('No user id received ')</script>";
            }
        // get data from manage_user End

        //----------------------Query section start
         //Insert
         if(isset($_POST['submit'])){
            $Name = $_POST['name'];
            $Phone_no = $_POST['phone_no'];
            $Email = $_POST['email'];
            $Password = $_POST['password'];
            $Usertype = $_POST['usertype'];

            // $conn = mysqli_connect("localhost","root","","parkingmanagement") or die("Connection Failed");
            
            if(!$submit==0){

                // $sql = "INSERT INTO `tbl_admin`(`Name`,`Phone`,`Email`,`Password`,`UserType`) VALUES ('$Name','$Phone_no','$Email','$Password','$Usertype');";
                $sql = "UPDATE `tbl_admin` SET `Name`='$Name',`Email`='$Email',`Phone`='$Phone_no',`Password`='$Password',`UserType`='$Usertype' WHERE `id` = $id";


                $result = mysqli_query($conn,$sql);
                if($result == true) {
                    echo "<script> alert (' Update User Successful')</script>";
                }else{
                    echo "<script> alert ('Failed to  Update User')</script>";
                }
            }        
        }


        //------------------------query section end
    ?>
    
    
    <section class="login_div">
        <div class="logo">
        <div class="logoimage">
                    <img src="./images/LOGGGO.jpeg" alt="Parking Logo">
                </div>
        </div>
            <form  method="POST" autocomplete="off">
                <div class="fields">
                    <div class="form">
                        <input type="text" name="name" placeholder="Full Name" class="input" value="<?php echo $rName ; ?>"   required>
                    </div>
                    <span><?php echo $nameErr;?></span>
                    <div class="form">
                        <input type="tel" name="phone_no" placeholder="Phone Number" class="input"  value="<?php echo $rPhone ; ?>" required>
                    </div>
                    <span><?php echo $phone_noErr;?></span>
                    <div class="form">
                        <input type="email" name="email" placeholder="Email" class="input" value="<?php echo $rEmail ; ?>" required>
                    </div>
                    <span><?php echo $emailErr;?></span>
                    <div class="form">
                        <input type="password" name="password" placeholder="Password (eg. Pa0@)"  value="<?php echo $rPass ; ?>" class="input" required>
                    </div>
                    <span><?php echo $passwordErr;?></span>
                    <div class="form">
                        <select name="usertype" class="input">
                            <option  <?php  if($rUserType == 'Regular') {echo 'selected' ;} ?>  value="Regular" class="input">Regular</option>
                            <option <?php  if($rUserType == 'Admin') {echo 'selected' ;} ?> value="Admin" class="input">Admin</option>
                        </select>
                    </div>
                    <button type="submit" class="signin-button" name="submit">SUBMIT</button>
                </div>
            </form>
    </section>

<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>