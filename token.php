<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";

      if(isset($_POST['submit'])){
        $Vehicle_no=$_POST['Vehicle_Number'];
        $Vehicle_Cat=$_POST['Name'];

        //rate find query
        $RateQ = "Select * from `tbl_vehicle_cat` where `Name` = '$Vehicle_Cat'";
        $RateR = mysqli_query($conn,$RateQ);
        if($RateR->num_rows>0){
          while($row=mysqli_fetch_assoc($RateR)){
          $Rate=$row['Rate'];
          }}
        
        date_default_timezone_set('Asia/Kolkata');
        $date = date('20y-m-d H:i:s');
        $sql = "insert into `tbl_parking` (Vehicle_Number,Vehicle_Cat,Rate,In_Time)
        values('$Vehicle_no','$Vehicle_Cat','$Rate','$date')";
      
        $result = mysqli_query($conn,$sql);

        if($result){
          // echo"doneee";
        }else{
          die(mysqli_error($con));
        }

      }
?>
  
<div class="login-div" style="margin:50px 100px 50px 670px;">
      <div class="logo logoimage">
        <img src="./images/LOGGGO.jpeg" alt="image" id="image">
      </div>
    <div class="title">Token Generate</div>
              <form action="token.php" method="POST">
              <div class="fields">
                <div class="username"><input type="text" name="Vehicle_Number" class="user-input" placeholder="Vehicle Number" /></div>


                <div class="username">
                  <select class="Cat_dropdown" name="Name">  
                    <!-- <option value="">Category</option> -->
                    <?php
                        $qr = "Select * from `tbl_vehicle_cat`";
                        $qr_r = mysqli_query($conn,$qr);
                        $var = 0;
                        if($qr_r->num_rows> 0){
                          while($optionData= mysqli_fetch_array($qr_r)){
                          // $option =$optionData['Name'];
                            $var =  $optionData['Name'];
                      ?>
                      <option  value="<?php print_r( $var) ; ?>">  <?php print_r( $var) ; ?></option> 
                    <?php
                      }}
                    ?>
                  </select></div>
                    
              <button type="submit" name="submit" class="signin-button">Generate Token</button>
              
              </form>
    </div>
</div>



<?php
$path = "./footer.php";
include "$path";
?>