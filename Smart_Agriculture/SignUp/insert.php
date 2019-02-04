<?php
$server = "localhost";
$user = "root";
$pass = "";
$dbname = "Smartagri";
 
//Creating connection for mysqli
$msg = ""; 
$conn = new mysqli($server, $user, $pass, $dbname);
 
//Checking connection
 
if($conn->connect_error){
 die("Connection failed:" . $conn->connect_error);
}
 
$email = mysqli_real_escape_string($conn, $_POST['email']);
$pswd = md5(mysqli_real_escape_string($conn, $_POST['password']));
$pswdrepeat=mysqli_real_escape_string($conn,$_POST['pswrepeat']);

 
$sql = "INSERT INTO Login (`User`, `password`) VALUES ('$email', '$pswd')";
 
if($conn->query($sql) === TRUE){

 
 header("Location: http://localhost/Smart_Agriculture/Login/Login.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql . "<br/>" . $conn->error;
}
$conn->close();
?>