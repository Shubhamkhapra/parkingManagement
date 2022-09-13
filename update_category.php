<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";
?>

    <?php
        if(isset($_GET['id'])){
            $id= $_GET['id'];

            //create Sql query to get data of selected ID
            $sql = "SELECT * FROM `tbl_vehicle_cat` WHERE id='$id'";
            $updateCategory= mysqli_query($conn, $sql);

            $count = mysqli_num_rows($updateCategory);
            if($count==1){
                $row = mysqli_fetch_assoc($updateCategory);
                $cName = $row['Name'];
                $cRate = $row['Rate'];
                $cActive = $row['Active'];
            }else {
                echo "<script> alert('No Category found')</script>";
                //header add 
            }
        }else{
            //header add 
            // header('location:'.$url.'admin/manage-category.php');
        }
    ?>
        <!-- Add vehicle category  -->
        <div class="vehicle_cat">
            <div class="col-12" id="title">Add Vehicle Category</div>
            <form class="row g-3 fields" action="" method="POST" enctype="multipart/form-data ">
                <div class="col-12 veh_Type">
                    <input type="text" value="<?php echo $id ; ?>" readonly>
                </div>
                <div class="col-12 veh_Type">
                    <input type="text" name="veh_cat" placeholder="Vehicle Type Two/Four" value="<?php echo $cName ; ?>" required>
                </div>
                 <div class="col-12 veh_Type">
                    <input type="text" name="rate" placeholder="Rate example 50" value="<?php echo $cRate ; ?>" required>
                </div>
                <div class="col-12 Status">
                    <input type="radio" <?php  if($cActive == 'Yes') {echo 'checked' ;} ?> name="active" value="Yes"> Yes
                    <input type="radio"  <?php  if($cActive == 'No') {echo 'checked' ;} ?>  name="active" value="No" > No
                </div>
                <div class="col-12">
                    <button type="submit" name="submit" class="signin-button">Submit</button>
                </div>
            </form>
        </div>


    <?php
        if(isset($_POST['submit'])){
            //get the values
            
            $veh_cat  = $_POST['veh_cat'];
            $active  = $_POST['active'];
            $rate  = $_POST['rate'];

            //query to insert data
            $q = "UPDATE `tbl_vehicle_cat` SET  `Name`='$veh_cat',`Rate`='$rate',`Active`='$active' WHERE `id` = $id";
            
            $insertExc = mysqli_query($conn, $q);
            if($insertExc == true) {
                echo "<script> alert ('Vehicle Category Add Successful')</script>";
            }else {
                echo "<script> alert ('Vehicle Category Not add ')</script>";
            }
        }

    ?>


<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
