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
$CNAME = mysqli_real_escape_string($conn, $_POST['cname']);

 


$sql1="UPDATE suggested_crop SET `crop_name` = '$CNAME' WHERE `location`= '$LOCATION' ";



      
if($conn->query($sql1)==TRUE){

 header("Location: http://localhost/Smart_Agriculture/Admin/Suggestcrop.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql1 . "<br/>" . $conn->error;

}
$conn->close();
?>