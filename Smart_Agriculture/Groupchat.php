 
 <!DOCTYPE html>
 <html>

 <head>
   <title>Gchat</title>
   <style>
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



   </style>
 </head>
 <body background="https://previews.123rf.com/images/ke77kz/ke77kz1612/ke77kz161200123/69458947-personnes-%C3%A2g%C3%A9es-et-jauni-fond-de-papier-vintage-texture-du-papier-pour-la-conception-.jpg">
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

   $sqli = mysqli_query($conn,"select * from g_chat");
   while($row=mysqli_fetch_array($sqli))
  {
   
     
    echo"<table border=1>";
    echo "<br>";
    
    
    echo "<th>"; echo "@"; echo $row["user"]; echo "</th>";
    echo "<br>";
    echo "<td>"; echo $row["msg"]; echo "</td>";
    
   
    echo "</br>";
  
  echo"</table>";
}

  $conn->close();
      

   

  ?>




 
 </body>
 </html>



 