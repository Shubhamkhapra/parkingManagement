<?php ob_start();?>
<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";

if(isset($_SESSION['UserType']))
  {
    
    $check = $_SESSION['UserType'];
    if($check == "Regular")
    header("location:./token.php");
    ob_end_flush();
  }

?>

    <?php
        if(isset($_GET['id'])){
            $id= $_GET['id'];

            //create Sql query to get data of selected ID
            $sql = "DELETE FROM `tbl_admin` WHERE id='$id'";
            $deleteUser= mysqli_query($conn, $sql);

            //check quey execute or not
            if($deleteUser==true){
                echo "<script> alert('Delete Successful')</script>";
                header('location:./manage_user.php');
                 ob_end_flush();
            }else {
                echo "<script> alert('Delete  Not Successful')</script>";
                //header add 
                header('location:./manage_user.php');
                 ob_end_flush();
                
            }
        }else{
            echo "<script> alert('Delete Not Successful')</script>";
            //header add 
            header('location:./manage_user.php');
             ob_end_flush();
        }
    ?>




<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
