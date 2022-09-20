<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";
?>
<?php

if(isset($_POST['submit'])){
  $id=$_POST['id'];

  $sql = "select * from `tbl_parking` where `id` = $id";

  @$result = mysqli_query($conn ,$sql);

  if($result){
    while($row=mysqli_fetch_assoc($result)){
      $id=$row['id'];
      $Vehicle_Number=$row['Vehicle_Number'];
      $Rate=$row['Rate'];

    }
    }
  
}

?>
<!-- update vehicle category -->
    <div class="vehicle_cat_update">

    <form action="search.php" method="POST">
  <div class="fields">
    <div class="username"><input type="text" name="id" class="user-input" placeholder="Token Number" required /></div>
  <button type="submit" name="submit" class="signin-button">Search</button>
  </div>
  </form>
        <!-- table -->
        <table id="tabledata" class=" table table-striped table-hover mt-5">
            <tr class="text-black text-center bg_color">
                <th> Id </th>
                <th> Vehicle Number </th>
                <th> Rate </th>
                <th> Action </th>
            </tr>

                    <tr class="text-center">
                        <td><?php echo @$id ?></td>
                        <td><?php echo @$Vehicle_Number ?></td>
                        <td><?php echo @$Rate ?></td>
                        <td>
                            <!-- <button class="btn-danger btn"> -->
                    <?php
                          echo '
                          <a href="search.php?checkoutid='.@$id.'" class="text-danger"> 
                            <span class="material-symbols-outlined">check</span>
                            </a>'; ?>
                        </td>
                    </tr>
    <?php
           if(isset($_GET['checkoutid'])){
               $id1=$_GET['checkoutid'];
       
               date_default_timezone_set('Asia/Kolkata');
               $date = date('20y-m-d H:i:s');

               $sql1="select * from `tbl_parking` where id = $id1";
             
               $results = mysqli_query($conn,$sql1);
       
               if(!$results){
                   die(mysqli_error($conn));
               }else{
                while($row=mysqli_fetch_assoc($results)){
                  $In_Time = $row['In_Time'];
                  // $Out_Time = $row['Out_Time'];
                  $Out_Time = $date;
                  $Rate1=$row['Rate'];
                  
                  $totaltime = (strtotime($Out_Time) - strtotime($In_Time));
              
                              $hours = sprintf('%02d', intval($totaltime / 3600));
              
                              $seconds_remain = ($totaltime - ($hours * 3600)); 
              
                              $minutes = sprintf('%02d', intval($seconds_remain / 60));   
                              $seconds = sprintf('%02d' ,($seconds_remain - ($minutes * 60)));
              
                              $final = '';
              
                              if ($In_Time == '' || $Out_Time == '')
                              {
                                  $final = '';
                              }
                              else
                              {
                               $final = $hours.':'.$minutes.':'.$seconds;
                              //  echo $final;
                               echo "<br>";
                               $sql_q = "UPDATE `tbl_parking` SET `Out_Time`='$Out_Time', `Total_Time` = '$final',`Total_Amount` = '$Rate1'   WHERE `id` = $id1";
                               echo $sql_q;
                              //  yha dikkat aari
                               
                               $response = mysqli_query($conn,$sql_q);
                               
                               echo $id1;
                               echo $final;
                               if($response){
                                      echo"doneee";
                                    }else{
                                      // die(mysqli_error($conn));
                                    }

                              }
                  }
               }
                 }
    ?>
        </table>
    </div>

    <?php
$path = "./footer.php";
include "$path";
?>