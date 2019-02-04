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
 
$CNAME = mysqli_real_escape_string($conn, $_POST['cname']);
$CPRICE = mysqli_real_escape_string($conn, $_POST['cprice']);


 


$sql1="INSERT INTO market (`crop_name`, `crop_price`) VALUES ('$CNAME','$CPRICE')";



      
if($conn->query($sql1)==TRUE){

 header("Location: http://localhost/Smart_Agriculture/Admin/MarketDetails.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql1 . "<br/>" . $conn->error;

}
$conn->close();
?>