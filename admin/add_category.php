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

        <!-- Add vehicle category  -->
        <div class="vehicle_cat">
            <div class="col-12" id="title">Add Vehicle Category</div>
            <form class="row g-3 fields" action="" method="POST" enctype="multipart/form-data ">
                <div class="col-12 veh_Type">
                    <input type="text" name="veh_cat" placeholder="Two" required>
                </div>
                <div class="col-12 ">
                    <select class="col-12 Status" name="active">
                        <option selected value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </div>
                <div class="col-12">
                    <button type="submit" name="submit" class="signin-button">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <?php
        if(isset($_POST['submit'])){
            //get the values
            
            $veh_cat  = $_POST['veh_cat'];
            $active  = $_POST['active'];

            //query to insert data
            $q = "INSERT INTO `tbl_vehicle_cat`(`Name`, `Active`) VALUES ('$veh_cat','$active')";
            
            $insertExc = mysqli_query($conn, $q);
            if($insertExc == true) {
                echo "<script> alert ('Vehicle Category Add Successful')</script>";
            }else {
                echo "<script> alert ('Vehicle Category Not add ')</script>";
            }
        }

    ?>
</body>
</html>