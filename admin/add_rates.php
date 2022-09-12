<?php
$path = "../config/connection.php";
include "$path";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/Style.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="row">
          <!-- sidebar container -->

        <div class="col-3">
        <div>check</div>
        </div>

        <!-- Add vehicle Rates  -->
        <div class="vehicle_cat">
            <div class="col-12" id="title">Vehicle Parking Rates</div>

            <form class="row g-3 fields" action="" method="POST" enctype="multipart/form-data ">
                <div class="col-12 ">

                <!-- Veh Category -->
                    <select class="col-12 Status" name="Veh_cat_id">
                        <?php
                            $getVeh_Id = "SELECT * FROM `tbl_vehicle_cat` WHERE `Active` = 'Yes'";

                            $res_Veh_id = mysqli_query($conn,$getVeh_Id);

                            $count_Veh_id = mysqli_num_rows($res_Veh_id);
                            if($count_Veh_id>0) {
                                while($row = mysqli_fetch_assoc($res_Veh_id)){
                                    $veh_cat = $row['Name'];
                                    ?>
                                    <option  value="<?php echo $veh_cat ; ?>"><?php echo $veh_cat ; ?></option>
                                    <?php 
                                }
                            }else {
                                ?> 
                                <option value="0">No Category Found</option>
                                <?php 
                            }

                        ?>
                    </select>
                </div>

                <!-- Rate -->
                <div class="col-12 veh_Type">
                    <input type="text" name="Rate" placeholder="Price" required>
                </div>
                <!-- Active  -->
                <div class="col-12 ">
                    <select class="col-12 Status" name="active">
                        <option selected value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </div>
                <!-- Submit -->
                <div class="col-12">
                    <button type="submit" name="submit" class="signin-button">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <?php
        if(isset($_POST['submit'])){
            //get the values
            
            $veh_cat  = $_POST['Veh_cat_id'];
            $active  = $_POST['active'];
            $Rate  = $_POST['Rate'];

            //query to insert data
            $q = "INSERT INTO `tbl_rate`(`Vehicle_cat_ID`, `Rate`, `Active`) VALUES ('$veh_cat','$Rate','$active')";
            $RateSet = mysqli_query($conn, $q);
            if($RateSet == true) {
                echo "<script> alert ('Rate  Add Successful')</script>";
            }else {
                echo "<script> alert ('Rate Not add ')</script>";
            }
        }

    ?>
</body>
</html>