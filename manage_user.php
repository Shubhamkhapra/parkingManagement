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

<!-- update vehicle category -->
    <div class="vehicle_cat_update">
        <div class="col-12" id="title">Manage Users</div>
        <!-- table -->
        <table id="tabledata" class=" table table-striped table-hover mt-5 mb-5">
            <tr class="text-black text-center bg_color">
                <th> Id </th>
                <th> Name </th>
                <th> Email </th>
                <th> Phone </th>
                <th>Password</th>
                <th>UserType</th>
                <th> Action </th>
            </tr>

            <?php
                $U_User = "SELECT * FROM `tbl_admin`";
                $U_User_Q = mysqli_query($conn, $U_User);
                while($res = mysqli_fetch_array($U_User_Q)){
                    ?>
                    <tr class="text-center">
                        <td><?php echo $res[0] ; ?></td>
                        <td><?php echo $res[1] ; ?></td>
                        <td><?php echo $res[2] ; ?></td>
                        <td><?php echo $res[3] ; ?></td>
                        <td><?php echo $res[4] ; ?></td>
                        <td><?php echo $res[5] ; ?></td>
                        <td>
                            <!-- <button class="btn-danger btn"> -->
                    
                            <a href="./delete_user.php?id=<?php echo $res[0]; ?>" class="text-danger"> 
                            <span class="material-symbols-outlined">
                                delete
                                </span>
                            </a>
            
                            <!-- </button>  -->
                              <!-- <button class="btn-primary btn">  -->
                            <a href="./update_user.php?id=<?php echo $res[0]; ?>" class="text-warning"> <span class="material-symbols-outlined">edit </span>  </a> 
                        
                             <!-- </button> -->
                        </td>
                    </tr>
                    <?php
                }
            ?>
        </table>
    </div>

<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
