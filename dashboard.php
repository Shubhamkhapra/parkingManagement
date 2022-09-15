<!-- Menu bar import  -->
<?php
$path = "./Menu.php";
include "$path";
?>
        <!-- Get data from tables   start-->
        <?php
        // -----------Today chart Start 
        
        date_default_timezone_set('Asia/Kolkata');
        $date = date('20y-m-d'); //get today 
        // echo $date;
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

        ?>
        <!-- Get data from tables   End-->

        <!-- chart container -->
        <div class="ChartContainer col-8">
            <div style="text-align: center;">
                <!-- <?php print_r($Today_Veh_cat_labels); ?> -->
            </div>
            <div id="totalRegistration">
                <canvas id="totalVehicle" ></canvas>
            </div> 
            
            <div id="Week">
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

    // Total Registered Users Start--------------------

    //setup Block
    // const MCA  = <?php /*echo json_encode($mcaStudent); */?>;
    const MCA  = 50;
    const BCA  = 60;
    const Teacher  = 30;
    const MBA  = 20;
    const BBA  = 1;
    const TotalVehicle  =parseInt(MCA)  + parseInt(BCA)+ parseInt(Teacher)+ parseInt(MBA) + parseInt(BBA);
    const TotalRegistration =  {
        labels: ['Total Profit'],
        datasets: [{
            // Total student
            label: 'Total Vehicle',
            data: [TotalVehicle],
            backgroundColor: ' rgba(255, 241, 46, 0.381)',
            borderColor: ' rgba(255, 241, 46, 0.381)',
            borderWidth: 1
        },{
            // MCA student
            label: 'MCA',
            data: [MCA],
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
        },{
            // BCA Student 
        label: 'BCA',
            data: [BCA],
            backgroundColor: 
                'rgba(54, 162, 235, 0.2)',
            borderColor:
                'rgba(54, 162, 235, 1)',
            borderWidth: 1
        },{
            //MBA Students
            label: 'MBA',
            data: [MBA],
            backgroundColor: 
                'rgba(153, 102, 255, 0.2)',
            borderColor:
                'rgba(153, 102, 255, 0.2)',
            borderWidth: 1
        },{
            //BBA Students
            label: 'BBA',
            data: [BBA],
            backgroundColor: 
                'rgba(146, 0, 122, 0.384)',
            borderColor:
                'rgba(146, 0, 122, 0.384)',
            borderWidth: 1
        },{
            //Teachers
            label: 'Teacher',
            data: [Teacher],
            backgroundColor: 
            'rgba(0, 146, 110, 0.384)',
            borderColor:
            'rgba(0, 146, 110, 0.384)',
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
                    min:0,
                    max : 240
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


    // Total Registered User  End--------------------

     // One Weak Vehicle Entry Start --------------------------
    //setup Block
    const labels = ['JAN','FEB','MARCH','AP', 'JUN', 'JUL'];
    const OneWeakReport = {
        labels: labels,
        datasets: [{
            label: 'My First Dataset',
            data: [65, 59, 80, 81, 56, 55, 40],
            fill: false,
            borderColor: 'rgb(75, 192, 192)',
            tension: 0.1
        }]
    };
    //config Block
    const configOneWeakReport = {
        type: 'line',
        data: OneWeakReport,
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

<!-- 
    $StudentData = "SELECT *  FROM `tbl_student`";
    $sql = "SELECT COUNT(Rollno) From tbl_student WHERE Course=\"MCA\" AND Vechile_no IS  NOT NULL;";
    $resultStudent =mysqli_query($conn , $StudentData);
    $Rollno = array(); $Course =  array(); $Semester =  array(); 
    $Vechile_cat = array(); $Vechile_no = array();

    while($row = mysqli_fetch_array($resultStudent)){
        $Rollno[] = $row['Rollno'];
        $Course[] = $row['Course'];
        $Semester[] = $row['Semester'];
        $Vechile_cat[] = $row['Vechile_cat'];
        $Vechile_no[] = $row['Vechile_no'];
    }

    $data = array();
    foreach($resultStudent as $row) {
        $data[] = $row;
    }
    json_encode($data);
    'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'

                 //Query Mca Student  count vehicle
    $TotalMca ="SELECT COUNT(`Rollno`) as `total`  From `tbl_student` WHERE `Course`='MCA' AND `Vechile_no` IS  NOT NULL ";
    $resultMca =mysqli_query($conn , $TotalMca);
    $mcaStudent;
    if($resultMca->num_rows>0){
        while($row =mysqli_fetch_array($resultMca)){
            $mcaStudent = $row['total'];
        }
    }
 -->

<!-- Footer bar import  -->
<?php
$path = "./footer.php";
include "$path";
?>
