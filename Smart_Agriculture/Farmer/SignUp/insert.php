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
 
$EMAIL = mysqli_real_escape_string($conn, $_POST['email']);
$PASSWORD = md5(mysqli_real_escape_string($conn, $_POST['password']));

$NAME = mysqli_real_escape_string($conn, $_POST['f_name']);
$ADDRESS = mysqli_real_escape_string($conn, $_POST['address']);
$PHONE = mysqli_real_escape_string($conn, $_POST['contact_no']);
$CROP = mysqli_real_escape_string($conn, $_POST['crop']);
$CQUANTITY = mysqli_real_escape_string($conn, $_POST['quantity']);


 
$sql1 = "INSERT INTO Login (`email`, `password`) VALUES ('$EMAIL', '$PASSWORD')";


 
$sql2="INSERT INTO farmer_details (`email`, `fname`, `address`, `contact_no`, `crop`, `quantity`) VALUES ('$EMAIL', '$NAME','$ADDRESS','$PHONE','$CROP','$CQUANTITY')";

      
if($conn->query($sql1)==TRUE and $conn->query($sql2)==TRUE){

 
 header("Location: http://localhost/Smart_Agriculture/Farmer/Login/Login.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql1 . "<br/>" . $conn->error;
 echo "Error" . $sql2 . "<br/>" . $conn->error;

}
$conn->close();
?>