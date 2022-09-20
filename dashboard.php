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
        <!-- Get data from tables   start-->
        <?php
        // -----------Today chart Start 
        
        date_default_timezone_set('Asia/Kolkata');
        $date = date('20y-m-d'); //get today 
        $TodayQ = "SELECT * FROM `tbl_parking` WHERE In_Time  like  '$date%';";
        $TodayR = mysqli_query($conn , $TodayQ);
        $Today=0; $Today_Veh=array();
        if($TodayR->num_rows>0){
            while($row= mysqli_fetch_assoc($TodayR)){
                $Today++;
                $Today_Veh[] = $row['Vehicle_Cat'];
            }
        }else
            {
                echo "<script> alert (' No vehicle Park today')</script>";
                $Today = 0;
                $Today_Veh[] = 0;
            }
        $Today_Veh_cat = array();
        // $Today_Veh_cat[] = array_unique($Today_Veh);
        $Today_Veh_cat = array_count_values($Today_Veh);
        $Today_Veh_cat_labels= array() ; $Today_Veh_cat_values = array();
        
        foreach($Today_Veh_cat as $x => $x_value) {
            $Today_Veh_cat_labels[] = $x;
            $Today_Veh_cat_values[] = $x_value;
          }


        
        // -------------Today chart End 

        //----------------------------YesterDay Chart Start
        $YesterdayDate= date("Y-m-d", strtotime("yesterday")); 
        $YesterdayQ = "SELECT * FROM `tbl_parking` WHERE In_Time  like  '$YesterdayDate%';";
        $YesterdayR = mysqli_query($conn , $YesterdayQ);
        $Yesterday=0; $Yesterday_Veh=array();
        if($YesterdayR->num_rows>0){
            while($row= mysqli_fetch_assoc($YesterdayR)){
                $Yesterday++;
                $Yesterday_Veh[] = $row['Vehicle_Cat'];
            }
        }else
            {
                echo "<script> alert (' No vehicle Park Yesterday')</script>";
                $Yesterday = 0;
                $Yesterday_Veh[] = 0;
            }
        $Yesterday_Veh_cat = array();
        // $Today_Veh_cat[] = array_unique($Today_Veh);
        $Yesterday_Veh_cat = array_count_values($Yesterday_Veh);
        $Yesterday_Veh_cat_labels= array() ; $Yesterday_Veh_cat_values = array();
        foreach($Yesterday_Veh_cat as $x => $x_value) {
            $Yesterday_Veh_cat_labels[] = $x;
            $Yesterday_Veh_cat_values[] = $x_value;
          }
          
        //--------------------YesterDay Chart End

        
        
        // ------------------income details start

        // Vehicle Category label make
        $veh_labels = "SELECT * FROM `tbl_vehicle_cat`";
        $veh_labelsQ = mysqli_query($conn,$veh_labels);
        $veh_labels_cat = array();
        if($veh_labelsQ->num_rows>0){
            while($row = mysqli_fetch_array($veh_labelsQ)){
                $veh_labels_cat[] = $row['Name'];
            }
        }else{
            $veh_labels_cat = 0;
        }

        //income array vehicle wise
        $veh_labels_value = array();
        foreach($veh_labels_cat as $x=> $x_value){
            $TotalIncomeQ = "SELECT sum(`Total_Amount`) as `TotalIncome` FROM `tbl_parking` WHERE `Vehicle_Cat` = '$x_value';";
            $TotalIncomeR = mysqli_query($conn , $TotalIncomeQ);
            if($TotalIncomeR->num_rows>0){
                    while($row = mysqli_fetch_array($TotalIncomeR)){
                        $veh_labels_value[]= $row['TotalIncome'];
                    }
                }else{
                    $veh_labels_value[] = 0;
                }
        }

        // ------------------income details End
        
        //-------------Week report Start
        $firstday = date('Y-m-d', strtotime("sunday -1 week"));
        $lastday = date('d-m-Y', strtotime("sunday 0 week"));
        $begin = new DateTime( $firstday );
        $end   = new DateTime( $lastday);
        $days = array();
        $daysName = array();
        for($i = $begin; $i <= $end; $i->modify('+1 day')){
            $days[] = $i->format("Y-m-d");
            $daysName[] = $i->format("l");
        }
        $weekAmount = array();
        foreach($days as $d){ //w :- week d:- date R:- result
            $w = "SELECT sum(`Total_Amount`)as `Total` FROM `tbl_parking` WHERE `In_Time` like '$d%';";
            $wR = mysqli_query($conn , $w);
            if($wR->num_rows>0){
                while($row = mysqli_fetch_array($wR)){
                    $weekAmount[] = $row['Total'];
                }
            }else{
                $weekAmount[]=0;
            }
        }
        //-------------Week report End


        ?>
        <!-- Get data from tables   End-->

        <!-- chart container -->
        <div class="ChartContainer col-8 ">

            <div id="totalRegistration">
                <h5 style="text-align: center;" class="mt-2 mb-2">Income 2022</h5>
                <canvas id="totalVehicle" ></canvas>
            </div> 
            
            <div id="Week">
            <h5 style="text-align: center;" class="mt-2 mb-2">Week Income Details</h5>
                <canvas id="OneWeakVehicle" ></canvas>
            </div>
                
            <div id="Today">
                <h5 style="text-align: center;" class="mt-2 mb-2">Today Vehicle Details</h5>
                <canvas id="TodayVehicle" ></canvas>
            </div>

            <div id="Yesterday">
                <h5 style="text-align: center;" class="mt-2 mb-2">Yesterday Vehicle Details</h5>
                <canvas id="YesterdayVehicle" ></canvas>
            </div> 
        </div>
    
    <script>

    // Total Income 2022 Start--------------------

    //setup Block
    let AllIncome  = <?php echo json_encode($veh_labels_value); ?>;
    AllIncome = AllIncome.toString();
    AllIncome = AllIncome.split(",");
    var sum= 0;
    AllIncome.forEach(x=>{
        sum +=Number(x);
    });
    AllIncome.push(sum);
    
    let AllLabels  = <?php echo json_encode($veh_labels_cat); ?>;
    AllLabels = AllLabels.toString();
    AllLabels = AllLabels.concat(",","Total Income");
    AllLabels = AllLabels.split(",");
   

    const TotalRegistration =  {
        labels: AllLabels,
        datasets: [{
            // Total 
            label: "Income",
            data: AllIncome,
            backgroundColor: ['rgba(255, 99, 132, 1)',
            'rgba(153, 102, 255, 0.2)',
                'rgba(146, 0, 122, 0.384)',
                'rgba(0, 146, 110, 0.384)',
                'rgba(54, 162, 235, 1)'],
            borderColor: ['rgba(255, 99, 132, 1)',
            'rgba(153, 102, 255, 0.2)',
                'rgba(146, 0, 122, 0.384)',
                'rgba(0, 146, 110, 0.384)',
                'rgba(54, 162, 235, 1)'],
            borderWidth: 1
        }
    ]
    };
    //config Block
    const configTotalRegistration = {
        type: 'bar',
        data :TotalRegistration,
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    max : 3000
                },
                x:{
                    gridLines:{
                        display:false
                    }
                }
            }
        }
    }

    //Render Block
    const totalPerson = new Chart(
        document.getElementById('totalVehicle'),configTotalRegistration
    );


    // Total Income  End--------------------

     // One Weak Vehicle Entry Start --------------------------
     let weekLabels =  <?php echo json_encode($daysName); ?>;
    weekLabels.splice(-1);
    
     let weekAmount = <?php echo json_encode($weekAmount); ?>;
     weekAmount.pop();
     
    //setup Block
    // const labels = ['Mon','Tue','Wed','Thurs', 'Fri', 'Sat', 'Sun'];
    const labels = weekLabels;
    const OneWeakReport = {
        labels: labels,
        datasets: [{
            label: 'Week Details',
            data: weekAmount,
            fill: false,
            borderColor: 'rgb(75, 192, 192)',
            tension: 0.1
        }]
    };
    //config Block
    const configOneWeakReport = {
        type: 'line',
        data: OneWeakReport,
        options: {
            scales: {
                y: {
                        beginAtZero: true
                }
            }
        }
    };
    //Render Block
    const OneWeakVehicle = new Chart(
        document.getElementById('OneWeakVehicle'),configOneWeakReport
    );
    // One Weak Vehicle Entry End --------------------------
   

    // Today Vehicle Entry Start --------------------------
    //setup Block
    const TodayTotal  = <?php echo json_encode($Today); ?>;
    let TodayLabels  = <?php echo json_encode($Today_Veh_cat_labels); ?>;
    TodayLabels = TodayLabels.toString();
    TodayLabels = TodayLabels.concat(",","Total Vehicles");
    TodayLabels = TodayLabels.split(",");
   
    let TodayData  = <?php echo json_encode($Today_Veh_cat_values); ?>;
    console.log(TodayData);
    TodayData = TodayData.toString();
    TodayData = TodayData.concat(",",TodayTotal);
    TodayData = TodayData.split(",");
   
    const TodayReport = {
        labels: TodayLabels,
        datasets: [{
        label: 'Today Vehicle',
        data: TodayData,
        backgroundColor: [
            'rgb(54, 162, 235)',
            'rgb(153, 102, 255)',
            'rgb(0, 146, 110)'
        ]
        
        }]
        };
        //config Block
        const configTodayReport = {
            type: 'polarArea',
            data: TodayReport,
            options: {

            }
        };
        //Render Block
        
        const TodayVehicle = new Chart(
            document.getElementById('TodayVehicle'),configTodayReport
            );
        // Today Vehicle Entry End --------------------------
            

    // Yesterday Vehicle Entry Start --------------------------
        const YesterdayTotal  = <?php echo json_encode($Yesterday); ?>;
        let YesterdayLabels  = <?php echo json_encode($Yesterday_Veh_cat_labels); ?>;
        YesterdayLabels = YesterdayLabels.toString();
        YesterdayLabels = YesterdayLabels.concat(",","Total Vehicles");
        YesterdayLabels = YesterdayLabels.split(",");
        let YesterdayData  = <?php echo json_encode($Yesterday_Veh_cat_values); ?>;
        YesterdayData = YesterdayData.toString();
        YesterdayData = YesterdayData.concat(",",YesterdayTotal);
        YesterdayData = YesterdayData.split(",");
            //setup Block
    const YesterdayReport = {
        labels: YesterdayLabels,
        datasets: [{
            label: 'Yesterday Vehicle Details',
            data: YesterdayData,
            backgroundColor: [
            'rgb(255, 99, 132)',
            'rgb(54, 162, 235)',
            'rgb(255, 205, 86)'
            ],
            hoverOffset: 4
        }]
        };
    //config Block
    const configYesterdayReport = {
        type: 'pie',
        data: YesterdayReport,
    };
    //Render Block
    const YesterdayVehicle = new Chart(
        document.getElementById('YesterdayVehicle'),configYesterdayReport
    );
    // Yesterday Vehicle Entry End --------------------------
    
   
    </script>

<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
