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
        <!-- Add vehicle category  -->
        <div class="vehicle_cat">
            <div class="col-12" id="title">Add Vehicle Category</div>
            <form class="row g-3 fields" action="" method="POST" enctype="multipart/form-data ">
                <div class="col-12 veh_Type">
                    <input type="text" name="veh_cat" placeholder="Vehicle Type Two/Four" required>
                </div>
                 <div class="col-12 veh_Type">
                    <input type="text" name="rate" placeholder="Rate example 50" required>
                </div>
                <div class="col-12 Status">
                    <input type="radio" name="active" value="Yes"> Yes
                    <input type="radio" name="active" value="No" > No
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
            $q = "INSERT INTO `tbl_vehicle_cat`(`Name`,`Rate`, `Active`) VALUES ('$veh_cat','$rate','$active')";
            
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
