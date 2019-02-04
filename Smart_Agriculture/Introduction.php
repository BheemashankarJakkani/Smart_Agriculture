<?php

$link1= "http://localhost/Smart_Agriculture/Farmer/SignUp/SignUp.php";
$link2="http://localhost/Smart_Agriculture/Farmer/Login/Login.php";

?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="From S Ramanujan 1729 Team">

    <title>Agriculture DataBase Management System </title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  
    <style>
       
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

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}


/* Right-aligned section inside the top navigation */
.topnav-right {
  float: right;
}

.topnav a.active {
  background-color: #ddd;
  color: black;
}


        footer {
            margin-top: 50px;
            padding-top: 20px;
            padding-bottom: 10px;
            background-color: #f5f5f5;
        }
        .text-muted {
            color: #777;
        }
         .button {
    background-color: #555555; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
    </style>
</head>
<!--<body background="http://www.portoalegre.travel/upload/b/153/1532004_indian-agriculture-hd-wallpaper.jpg"> -->
    
    <body  style="background:url(hi.jpeg) no-repeat; background-size: 100% ">
      
        


  <div class="topnav">
  <a class="active" href=""><strong>"Crop suggestion Tool"</strong></a>
  <a href=""></a>
  <div class="topnav-right">
  <a href="http://localhost/Smart_Agriculture/Admin/Login.php">Administrative login</a>
  
</div>

</div>
                          
        

<div class="container">

    <div class="jumbotron">
        <h1>Crop Suggestion System TOOL For Farmers</h1>
      <p>Welcome to <strong>"Crop suggestion System Tool"</strong><br>  Farmers are the most valuable asset of the society; the government should take proper steps to help them with proper resources. The agricultural database management system is helping the farmers from numerous aspects like- guidance on crop planning, farm mechanism, providing on time solution of Insect's, guidance on crop planning and many more. This process is helping farmers to get financial assistance from bank and co-operative societies; in the marketing process of various agricultural products they can also get assistance with this agricultural database system.
  .</p>
    </div>

    
     <br><br><br><br>
    <div class="page-header">
        <h1 style="color:white">FARMER'S INFORMATION</h1>
    </div>

    <hr
    
    <div class="row">
        <div class="col-md-8">
            <p><h4 style="color: #f2f2f2">Farmers Can help us By providing information about your Agriculture Statastics. This data may help in future for Agricultre .you can provide statastical data by <strong>Signup or Sign in .  </strong></h4>
            </p>

          <br></br>
          <br></br>



         
          <center>

           <button class="button" onclick="window.location.href='<?php echo $link2; ?>'" style="width:auto;">Login</button>
            <button  class="button "onclick="window.location.href='<?php echo $link1; ?>'"style="width:auto;">Sign up</button>


</center>

        </div>
    </div>

</div>

<footer class="footer">
  <div class="container">
    <p align =right  class="text-muted">Built by <strong>"S Ramanujan 1729"</strong> team .</p>
  </div>
</footer>


</body>
</html>