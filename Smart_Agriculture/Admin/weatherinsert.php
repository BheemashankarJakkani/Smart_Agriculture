<?php
$server = "localhost";
$user = "root";
$pass = "";
$dbname = "agri";
 
//Creating connection for mysqli
$msg = ""; 
$conn = new mysqli($server, $user, $pass, $dbname);
 
//Checking connection
 
if($conn->connect_error){
 die("Connection failed:" . $conn->connect_error);
}
 
$LOCATION = mysqli_real_escape_string($conn, $_POST['location']);
$HUMIDITY = mysqli_real_escape_string($conn, $_POST['humidity']);

$TEMPERATURE = mysqli_real_escape_string($conn, $_POST['temperature']);
$CNAME = mysqli_real_escape_string($conn, $_POST['cname']);
$CYIELD = mysqli_real_escape_string($conn, $_POST['cyield']);
$CPROBLEM= mysqli_real_escape_string($conn, $_POST['cproblem']);
$CFERTILIZER = mysqli_real_escape_string($conn, $_POST['cfertilizer']);
$FERTIPRICE = mysqli_real_escape_string($conn, $_POST['fertiprice']);


 
$sql1 = "INSERT INTO weather (`location`, `humidity`,`temp`) VALUES ('$LOCATION', '$HUMIDITY','$TEMPERATURE')";

$sql2="INSERT INTO crop_details (`crop_name`, `location`, `crop_yield`) VALUES ('$CNAME','$LOCATION','$CYIELD')";

$sql3="INSERT INTO fertilizer(`crop_name`, `problem`, `fertilizer`,`F_price`) VALUES ('$CNAME','$CPROBLEM','$CFERTILIZER','$FERTIPRICE')";

      
if($conn->query($sql1)==TRUE and $conn->query($sql2)==TRUE and $conn->query($sql3)==TRUE){

 header("Location: http://localhost/Smart_Agriculture/Admin/Crop_weather.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql1 . "<br/>" . $conn->error;
 echo "Error" . $sql2 . "<br/>" . $conn->error;
 echo "Error" . $sql3 . "<br/>" . $conn->error;

}
$conn->close();
?>