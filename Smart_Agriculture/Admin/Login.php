<?php

$link1="http://localhost/Smart_Agriculture/Farmer/SignUp/SignUp.php" ;

$error=''; //Variable to Store error message;
if(isset($_POST['submit'])){
 if(empty($_POST['email']) || empty($_POST['password'])){
 $error = "Email or Password is empty";
 }
 else
 {
      //Establishing Connection with server by passing server_name, user_id and pass as a patameter
 $conn = mysqli_connect("localhost", "root", "");
 //Selecting Database
 $db = mysqli_select_db($conn, "agri");
 //Define $user and $pass
$email=mysqli_real_escape_string($conn, $_POST['email']);
$password=mysqli_real_escape_string($conn, $_POST['password']);
 
 //sql query to fetch information of registerd user and finds user match.
 $query = mysqli_query($conn, "SELECT * FROM admin_login WHERE email='$email' AND password='$password'");
 
 $rows = mysqli_num_rows($query);
 if($rows == 1){
 header("Location: http://localhost/Smart_Agriculture/Admin/Crop_weather.php"); // Redirecting to other page
 }
 else
 {
 $error = "Email or Password is Invalid.";
 }
 mysqli_close($conn); // Closing connection
 }
}

?>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=email], input[type=password] {
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
.topnav a.active {
  background-color: #ddd;
  color: black;
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
</style>
</head>
<body>
  <div class="topnav">
  
  <a class="active" href="">Log in</a>

</div>


  
  <form class="modal-content animate" method="POST" action="">
    <div class="imgcontainer">
     
    <div class="container">
      <h1>Admin Log in</h1>
      <p></p>
      <hr>
      <label for="uname"><b>Username</b></label>
      <input type="email" id="email" placeholder="Enter Username or Email" name="email" required autocomplete="off">

      <label for="psw"><b>Password</b></label>
      <input type="password" id="password" placeholder="Enter Password" name="password" required autocomplete="off">
        
      <button type="submit" value="submit" name="submit">Login</button>
      <span><?php echo $error; ?></span>
     
    </div>

    <div class="container" style="background-color:#f1f1f1">
       <button onclick="window.location.href='<?php echo $link1; ?>'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>



</body>
</html>
