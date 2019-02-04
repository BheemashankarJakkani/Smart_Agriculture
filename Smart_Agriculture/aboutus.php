<?php

$link1="http://localhost/Smart_Agriculture/Farmer/prediction.php" ;
$link2="http://localhost/Smart_Agriculture/Farmer/croppricefinder.php";
$link3="http://localhost/Smart_Agriculture/Farmer/fertilizeradvise.php";


?>


<!DOCTYPE html>
<html>
<head>
  <head>
  <link href='https://fonts.googleapis.com/css?family=Redressed' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Revalia' rel='stylesheet'>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<div class="topnav">
  <a href="http://localhost/Smart_Agriculture/Farmer/Homefarmer.php">Home</a>
  <a  href="<?php echo $link1; ?>">Crop Suggestion</a>
  <a href="<?php echo $link2; ?>">Crop Price</a>
  <a href="<?php echo $link3; ?>">Fertilizer</a>
    <a href="http://localhost/Smart_Agriculture/Farmer/GroupchatFarmer.php">Group chat</a>
  <a class="active" href="http://localhost/Smart_Agriculture/aboutus.php">About</a>
 
 
</div>


<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
input[type=submit],[type=reset] {
    width: 10%;
    background-color: #333;
    color: white;
    padding: 14px 20px;
    margin: 8px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
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
input[type=submit]:hover,[type=reset]:hover {
    background-color: #ddd;
  color:black;
}
input[type=text],[type=date],[type=time],[type=number],[type=email],[type=password],select {
    width: 45%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; 
  border-bottom: 1px dashed #83A4C5;
  
}
h1 {
    font-family: 'Redressed';font-size: 120px;
    text-align: center;
}

h2 {
    font-family: 'Revalia';font-size: 22px;
    text-align: center;
}
h3 {
  text-align: center;
}
  .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   font-style: italic;
   height: 35px;
   text-align: center;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav-right {
  float: right;
}


.topnav a.active {
  background-color: #ddd;
  color: black;
}


</style>
</head>
<body>

<h2>Responsive "#Ramanujan_@_1729" Team</h2>

<br>

<div class="row">
  <div class="column">
   
      <div class="container">
        <h2>Narasimha Karthik</h2>
        <p class="title"> Developer</p>
        <p>PES UNIVERSITY </p>
        <p>karthik@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

 
  <div class="column">
   
      <div class="container">
        <h2>Bheemashankar Jakkani</h2>
        <p class="title">Developer</p>
        <p>PES UNIVERSITY</p>
        <p>bsjakakni@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
<div class="footer">
  <p>Ramanujan 1729</p>
  </div>
</html>
</html>
