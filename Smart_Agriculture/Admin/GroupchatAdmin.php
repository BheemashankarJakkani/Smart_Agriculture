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
 
 if(isset($_POST['send']))
 {

$MSG = mysqli_real_escape_string($conn, $_POST['message']);


 


$sql1="INSERT INTO g_chat (`chat_id`,`user`,`msg`) VALUES ('','Admin','$MSG')";



      
if($conn->query($sql1)==TRUE){

 //header("Location: http://localhost/Smart_Agriculture/Admin/Suggestcrop.php"); // Redirecting to other page
 }
else
{
 echo "Error" . $sql1 . "<br/>" . $conn->error;

}



}
$conn->close();






?>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #555555;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */



.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}


* {
    box-sizing: border-box;
}

body {
  margin: 0;
}



/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.topnav a.active {
  background-color: #ddd;
  color: black;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}





</style>
</head>
<body>

<div class="topnav">
  <a href="http://localhost/Smart_Agriculture/Admin/Crop_weather.php">Weather and Crop deatails</a>
  <a href="http://localhost/Smart_Agriculture/Admin/MarketDetails.php">Market Deatails</a>
  <a href="http://localhost/Smart_Agriculture/Admin/Suggestcrop.php">Suggesting Crop</a>
  <a href="http://localhost/Smart_Agriculture/Admin/displaydetails.php">Display / Delete</a>
  <a class="active" href="">Group chat</a>
  <a href="http://localhost/Smart_Agriculture/Admin/Logdetails.php ">Log Details</a>
  
</div>

  
  <form class="modal-content animate" method="POST" action="">
    <div class="imgcontainer">
     
    <div class="container">
 
      <h1>Group chat For Farmers and Expert's</h1>
      <p>Please ask any querry related to Farming</p>
       <hr>
     <img src="vol2.png" alt="Gchatwindow" width="1180" height="300">
      
      <hr>


       <div class="imgcontainer">
     
    <div class="container">
      <iframe src="http://localhost/Smart_Agriculture/Groupchat.php" width="1180" height="500"></iframe>

 
       
    </div>

    <div class="container" style="background-color:#f1f1f1">

     
       
       <input type="text" placeholder="Message" name="message" required autocomplete="off">

       <button type="Send" name="send" id="send">Send</button>
        
       <br></br>
    </div>
  </form>
</div>


</body>
</html>
