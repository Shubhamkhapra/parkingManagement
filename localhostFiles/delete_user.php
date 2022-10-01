<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";
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
                header('location:'.$url.'manage_user.php');
            }else {
                echo "<script> alert('Delete  Not Successful')</script>";
                //header add 
                header('location:'.$url.'manage_user.php');
            }
        }else{
            echo "<script> alert('Delete Not Successful')</script>";
            //header add 
            header('location:'.$url.'manage_user.php');
        }
    ?>




<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
