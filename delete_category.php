<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";

?>

    <?php
        if(isset($_GET['id'])){
            $id= $_GET['id'];

            //create Sql query to get data of selected ID
            $sql = "DELETE FROM `tbl_vehicle_cat` WHERE id='$id'";
            $deleteCategory= mysqli_query($conn, $sql);

            //check quey execute or not
            if($count==1){
                $row = mysqli_fetch_assoc($updateCategory);
                $cName = $row['Name'];
                $cRate = $row['Rate'];
                $cActive = $row['Active'];
            }else {
                echo "<script> alert('Delete Successful')</script>";
                //header add 
                header('location:'.$url.'manage_category.php');
            }
        }else{
            echo "<script> alert('Delete Not Successful')</script>";
            //header add 
            header('location:'.$url.'manage_category.php');
        }
    ?>




<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
