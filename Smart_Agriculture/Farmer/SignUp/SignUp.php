<?php

$link1= "http://localhost/Smart_Agriculture/Farmer/Login/Login.php";

?>


<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password],input[type=email],input[type=number] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus,input[type=email]:focus,input[type=number]:focus  {
    background-color: #ddd;
    outline: none;
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
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
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
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
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
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.topnav a.active {
  background-color: #ddd;
  color: black;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}


}
</style>
<body>
<div class="topnav">
  <a class="active" href="">Create account</a>
  <a href="<?php echo $link1; ?>">Log in</a>

</div>


  <form class="modal-content"  method="POST" action="insert.php">
    <div class="container">
      <h1>User deatils</h1>
      <p>Please fill in this form to create an account And please provide your Agriculture Deatails of this year for <strong>"Survey !"</strong>  this helps many formers.
      </p>
       <hr>

      <label for="f_name"><b>User Name</b></label>
      <input type="text"  id="f_name" placeholder="Enter Your name" name="f_name" required autocomplete="off">

      <label for="address"><b>Address</b></label>
      <input type="text"  id="address" placeholder="Enter Your Address" name="address" required autocomplete="off">

      <label for="contact_no"><b>Contact Details</b></label>
      <input type="number"  id="cantact_no" placeholder="Enter Your Phone no" name="contact_no" required autocomplete="off">
     

      <label for="crop"><b>Crop Cultivated </b></label>
      <input type="text"  id="crop" placeholder="Enter the crop Cultivated" name="crop" required >
        
      <label for="quantity"><b>Crop Yield Quantity   </b></label>
      <input type="number"  id="quantity" placeholder="Enter crop yield in Quintals " name="quantity" required autocomplete="off">


      <br>
    </br>

      <h1>Sign Up</h1>

      <hr>
      <label for="email"><b>Email</b></label>
      <input type="email" id="email" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" id="password" placeholder="Enter Password" name="password" required autocomplete="off>

      
      
      <div class="clearfix">   
      
      <button onclick="window.location.href='<?php echo $link1; ?>'" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>

        <div class="clearfix"> 
      </div>
    </div>
  </form>
</div>



</body>
</html>
