<?php
$path = "../config/connection.php";
include "$path";

    //Query Mca Student  count vehicle
    $TotalMca ="SELECT COUNT(`Rollno`) as `total`  From `tbl_student` WHERE `Course`='MCA' AND `Vechile_no` IS  NOT NULL ";
    $resultMca =mysqli_query($conn , $TotalMca);
    $mcaStudent;
    if($resultMca->num_rows>0){
        while($row =mysqli_fetch_array($resultMca)){
            $mcaStudent = $row['total'];
        }
    }


    //Query BCA Student  count vehicle
    $TotalBca ="SELECT COUNT(`Rollno`) as `total`  From `tbl_student` WHERE `Course`='BCA' AND `Vechile_no` IS  NOT NULL ";
    $resultBca =mysqli_query($conn , $TotalBca);
    $bcaStudent;
    if($resultBca->num_rows>0){
        while($row =mysqli_fetch_array($resultBca)){
            $bcaStudent = $row['total'];
        }
    }

    //query Teacher count vehicle
    $TotalTeacher = "SELECT COUNT(`Id`) as total FROM `tbl_teacher` WHERE `Vehile_No` IS NOT Null";
    $resultTeacher =mysqli_query($conn , $TotalTeacher);
    $teacherCount;
    if($resultTeacher->num_rows>0){
        while($row =mysqli_fetch_array($resultTeacher)){
            $teacherCount = $row['total'];
        }
    }

     //Query MBA Student  count vehicle
     $TotalMBA ="SELECT COUNT(`Rollno`) as `total`  From `tbl_student` WHERE `Course`='MBA' AND `Vechile_no` IS  NOT NULL ";
     $resultMBA  =mysqli_query($conn , $TotalMBA);
     $MBAStudent;
     if($resultMBA->num_rows>0){
         while($row =mysqli_fetch_array($resultMBA )){
             $MBAStudent = $row['total'];
         }
     }

     //Query BBA Student  count vehicle
     $TotalBBA ="SELECT COUNT(`Rollno`) as `total`  From `tbl_student` WHERE `Course`='BBA' AND `Vechile_no` IS  NOT NULL ";
     $resultBBA  =mysqli_query($conn , $TotalBBA);
     $BBAStudent;
     if($resultBBA->num_rows>0){
         while($row =mysqli_fetch_array($resultBBA )){
             $BBAStudent = $row['total'];
         }
     }





?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/Style.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

    <div class="container">

        <div id="totalRegistration">
            <canvas id="totalVehicle" ></canvas>
        </div> 
        
        <div id="Week">
            <canvas id="OneWeakVehicle" ></canvas>
        </div>
            
        <div id="Today">
            <canvas id="TodayVehicle" ></canvas>
        </div>

        <div id="Yesterday">
            <canvas id="YesterdayVehicle" ></canvas>
        </div> 

        

    </div>
 
    <script>

    // Total Registered Users Start--------------------

    //setup Block
    const MCA  = <?php echo json_encode($mcaStudent); ?>;
    const BCA  = <?php echo json_encode($bcaStudent); ?>;
    const Teacher  = <?php echo json_encode($teacherCount); ?>;
    const MBA  = <?php echo json_encode($MBAStudent); ?>;
    const BBA  = <?php echo json_encode($BBAStudent); ?>;
    const TotalVehicle  =parseInt(MCA)  + parseInt(BCA)+ parseInt(Teacher)+ parseInt(MBA) + parseInt(BBA);
    const TotalRegistration =  {
        labels: ['Total Registered Users'],
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
    const TodayReport = {
        labels: ['Red','Green','Yellow','Grey','Blue'],
        datasets: [{
        label: 'My First Dataset',
        data: [11, 16, 7, 3, 14],
        backgroundColor: [
            'rgb(255, 99, 132)',
            'rgb(75, 192, 192)',
            'rgb(255, 205, 86)',
            'rgb(201, 203, 207)',
            'rgb(54, 162, 235)'
        ]
        }]
        };
    //config Block
    const configTodayReport = {
        type: 'polarArea',
        data: TodayReport,
        options: {}
    };
    //Render Block
    const TodayVehicle = new Chart(
        document.getElementById('TodayVehicle'),configTodayReport
    );
    // Today Vehicle Entry End --------------------------

    // Yesterday Vehicle Entry Start --------------------------
    //setup Block
    const YesterdayReport = {
        labels: ['Red','Blue','Yellow'],
        datasets: [{
            label: 'My First Dataset',
            data: [300, 50, 100],
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
</body>
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
 -->
</html>
