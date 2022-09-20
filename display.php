<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";
?>
<!-- update vehicle category -->
<div class="vehicle_cat_update">
  
    <form action="display.php" method="POST">
      <h1 class="text-center">Vehicle Details</h1>
  </form>
  <!-- table -->
        <table id="tabledata" class=" table table-striped table-hover mt-5">
            <tr class="text-black text-center bg_color">
                <th> Id </th>
                <th> Vehicle Number </th>
                <th> Rate </th>
                <th> Total Time </th>
              </tr>
          <?php
            

            $sql = "select * from `tbl_parking`";

            $result = mysqli_query($conn,$sql);

            if($result){
              while($row=mysqli_fetch_assoc($result)){
                $id=$row['id'];
                $Vehicle_Number=$row['Vehicle_Number'];
                $Rate=$row['Rate'];
                $Total_Time=$row['Total_Time'];
                ?>
              
              <tr class="text-center">
                <td><?php echo @$id ?></td>
                <td><?php echo @$Vehicle_Number ?></td>
                <td><?php echo @$Rate ?></td>
                <td><?php echo @$Total_Time ?></td>
                      </tr>
                     <?php

                    }
                    }
                     ?> 
                      
        </table>
    </div>

    <?php
$path = "./footer.php";
include "$path";
?>