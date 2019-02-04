<?php



$link1="http://localhost/Smart_Agriculture/Farmer/prediction.php" ;
$link2="http://localhost/Smart_Agriculture/Farmer/croppricefinder.php";
$link3="http://localhost/Smart_Agriculture/Farmer/fertilizeradvise.php";



?>


<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Redressed' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href='https://fonts.googleapis.com/css?family=Revalia' rel='stylesheet'>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
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

.container {
    position:relative;
    text-align: center;
    color: white;
}
.container1 {
    position: relative;
    text-align: center;
    color: black;
}


.bottom-left {
    position: absolute;
    bottom: 8px;
    left: 16px;
    font-family: 'Revalia';font-size: 22px;
    text-align: center;

}




.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    font-family: 'Redressed';font-size: 120px;
    transform: translate(-50%, -50%);
}


.footer {
   position: ;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   font-style: italic;
   height: 50px;
   text-align: center;
}
p{
  font-family: 'Revalia';font-size: 22px;
    text-align: center;
}
</style>
<body>
  <div class="topnav">
  <a class="active" href="">Home</a>

  <a href="<?php echo $link1; ?>">Crop Suggestion</a>
  <a href="<?php echo $link2; ?>">Crop Price</a>
  <a href="<?php echo $link3; ?>">Fertilizer</a>
  <a href="http://localhost/Smart_Agriculture/Farmer/GroupchatFarmer.php">Group chat</a>
  <a href="http://localhost/Smart_Agriculture/aboutus.php">About</a>



</div>

<div class="container">
  <img src="http://localhost/Smart_Agriculture/Farmer/Sunset.jpg" alt="Snow" style="width:100%;">
  <div class="bottom-left"># Agriculture is our wisest pursuit, because it will in the end contribute most to real wealth, good morals, and happiness.</div>
  
  <div class="centered">Smart Agriculture </div>
</div>


<div class="container1">
  <img src="http://localhost/Smart_Agriculture/Farmer/whitepic.jpg" alt="Snow" style="width:100%; height: 10%">
  <div class="bottom-left"># The farmer is the only man in our economy who buys everything at retail, sells everything at wholesale, and pays the freight both ways.</div>
  
  <div class="centered"># Anounce Agriculture as Industry </div>
</div>
<img src="http://localhost/Smart_Agriculture/Farmer/farmer1.jpg" width="1500" height="500">
<center><img src="http://localhost/Smart_Agriculture/Farmer/Famer2.jpg.gif"  width="1200" height="300"></center>

</body>


<div class="footer">



  <p>Created by Team Ramanujan @ 1729</p>
  </div>
  </html>