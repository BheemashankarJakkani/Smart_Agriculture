<?php

$error='';

$server = "localhost";
$user = "root";
$pass = "";
$dbname = "agri";
 
//Creating connection for mysqli
$conn = new mysqli($server, $user, $pass, $dbname);
if($conn->connect_error){
 die("Connection failed:" . $conn->connect_error);
}



?>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

table {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 70%;
  margin-left:auto; 
    margin-right:auto;
}

 td {
    border: 1px solid #ddd;
    padding: 8px;
  text-align:center;
}
th{
  width:10%;
  border: 1px solid #ddd;
    padding: 8px;
  text-align:center;
}

tr:nth-child(even){background-color: #f2f2f2;}
tr:nth-child(odd){background-color: white;}

tr:hover {background-color: #ddd;}

th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color:   #000000;
    color: white;
  text-align:center;
  }

/* Full-width input fields */
input[type=text], input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.dropi {
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
  <a class="active" href="http://localhost/Smart_Agriculture/Admin/displaydetails.php">Display / Delete</a>
   <a href=" http://localhost/Smart_Agriculture/Admin/GroupchatAdmin.php">Group chat</a>
   <a href="http://localhost/Smart_Agriculture/Admin/Logdetails.php ">Log Details</a>
  <a href=""></a>

</div>

  
  <form class="modal-content animate" method="POST" action="">
    <div class="imgcontainer">
     
    <div class="container">
      <h1>Display the details</h1>
      <p>Please fill in this form .</p>
      <hr>
      <img src="d2.png" width="1180" height="300">
      <hr>

      
      <div class="dropi">
    <label for="item" >Select table to display</label></br>
    <select name="sitem" >
    
      <option value="Farmer">All Farmer details</option>
      <option value="Crop">Crop Details</option>
      <option value="Fertilizer">Fertilizer Details</option>
      <option value="weather">Weather Details</option>
      <option value="Market">Market Price</option>
      <option value="Suggested">Suggested crops</option>
    </select></br>
   </div>  
     
     
      <button type="submit" name="display">Display</button>
    
       <span><?php echo $error; ?></span>

       <?php 
if(isset($_POST['display'])){



if($_POST['sitem']=="Farmer")
{ 



  $sqli = mysqli_query($conn,"CALL getFarmers();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Email"; echo "</th>";
    echo "<th>"; echo "Farmer"; echo "</th>";
    echo "<th>"; echo "Address"; echo "</th>";
    echo "<th>"; echo "Contact_no"; echo "</th>";
    echo "<th>"; echo "Crop"; echo "</th>";
    echo "<th>"; echo "Quantity"; echo "</th>";
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["email"]; echo "</td>";
    echo "<td>"; echo $row["fname"]; echo "</td>";
    echo "<td>"; echo $row["address"]; echo "</td>";
    echo "<td>"; echo $row["contact_no"]; echo "</td>";
    echo "<td>"; echo $row["crop"]; echo "</td>";
    echo "<td>"; echo $row["quantity"]; echo "</td>";
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}

if($_POST['sitem']=="Crop")
{
   
  $sqli = mysqli_query($conn,"CALL getCrops();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Crop_Name"; echo "</th>";
    echo "<th>"; echo "Location"; echo "</th>";
    echo "<th>"; echo "Crop_yield"; echo "</th>";
   
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["crop_name"]; echo "</td>";
    echo "<td>"; echo $row["location"]; echo "</td>";
    echo "<td>"; echo $row["crop_yield"]; echo "</td>";
   
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}

if($_POST['sitem']=="Fertilizer")
{
   
  $sqli = mysqli_query($conn,"CALL getFertilizer();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Crop_Name"; echo "</th>";
    echo "<th>"; echo "Problem"; echo "</th>";
    echo "<th>"; echo "Fertilizer"; echo "</th>";
    echo "<th>"; echo "F_price"; echo "</th>";
   
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["crop_name"]; echo "</td>";
    echo "<td>"; echo $row["problem"]; echo "</td>";
    echo "<td>"; echo $row["fertilizer"]; echo "</td>";
    echo "<td>"; echo $row["F_price"]; echo "</td>";
   
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}

if($_POST['sitem']=="weather")
{
   
  $sqli = mysqli_query($conn,"CALL getWeather();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Location"; echo "</th>";
    echo "<th>"; echo "Humidity"; echo "</th>";
    echo "<th>"; echo "Temp"; echo "</th>";
  
   
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["location"]; echo "</td>";
    echo "<td>"; echo $row["humidity"]; echo "</td>";
    echo "<td>"; echo $row["temp"]; echo "</td>";
    
   
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}

if($_POST['sitem']=="Market")
{
   
  $sqli = mysqli_query($conn,"CALL getMarket();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Crop_Name"; echo "</th>";
    echo "<th>"; echo "Crop_Price"; echo "</th>";
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["crop_name"]; echo "</td>";
    echo "<td>"; echo $row["crop_price"]; echo "</td>";
    
   
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}

if($_POST['sitem']=="Suggested")
{
   
  $sqli = mysqli_query($conn,"CALL getSuggested();");
  echo"<table border=1>";
  echo "<tr>";
    
   
    echo "<th>"; echo "Location"; echo "</th>";
    echo "<th>"; echo "Crop_name"; echo "</th>";
    
    
  echo "</tr>";
  while($row=mysqli_fetch_array($sqli))
  {
    echo "<tr>";
    
    echo "<td>"; echo $row["location"]; echo "</td>";
    echo "<td>"; echo $row["crop_name"]; echo "</td>";
    
    
   
    echo "</tr>";
  }
  echo"</table>";
  $conn->close(); 

}



}
?>

    </div>

   </div>

  </form>

<form class="modal-content animate" method="POST" action="">
    <div class="imgcontainer">
     
    <div class="container">
      <h1>Delete Operation</h1>
      <p>Please choose to delete </p>
      <hr>
      <img src="dele2.jpg" width="1180" height="300">
      <hr>

      
      <div class="dropi">
    <label for="item" >Select  to delete</label></br>
    <select name="sitem" >
    
      <option value="farmer">Delete account With farmer Email</option>
      <option value="ferti">Delete Fertilizer Details by Cropname</option>
      <option value="market">Delete Market Price by Cropname</option>
      <option value="suggested">Delete Suggested crops by location</option>
      <input type="text" placeholder="Enter to delete" name="byname">
    </select></br>
   </div>  
     
     
      <button type="submit" name="delete">Delete</button>




   <?php
    if(isset($_POST["delete"]))
    {  

    if($_POST["sitem"]=="farmer")
   { 
  
     $sqli = mysqli_query($conn,"delete  from  login where email='$_POST[byname]'");
  
   }
   if($_POST["sitem"]=="suggested")
  {
    $sqli = mysqli_query($conn,"delete from suggested_crop where location='$_POST[byname]'");
   }

   if($_POST["sitem"]=="ferti")
  {
    $sqli = mysqli_query($conn,"delete from fertilizer where crop_name='$_POST[byname]'");
   }

   if($_POST["sitem"]=="market")
  {
    $sqli = mysqli_query($conn,"delete from market where crop_name='$_POST[byname]'");
   }
}


   ?>

 <div class="container" style="background-color:#f1f1f1">
       <button onclick="window.location.href='http://localhost/Smart_Agriculture/Introduction.php'" class="cancelbtn">Cancel</button>
      
    </div>


</div>
</form>


</body>
</html>
