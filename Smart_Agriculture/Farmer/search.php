<?php  
 $connect = mysqli_connect("localhost", "root", "", "agri");  
 if(isset($_POST["query"]))  
 {  
      $output = '';  
      $query = "SELECT location FROM suggested_crop WHERE location LIKE '%".$_POST["query"]."%'";  
      $result = mysqli_query($connect, $query);  
      $output = '<ul class="list-unstyled">';  
      if(mysqli_num_rows($result) > 0)  
      {  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '<li>'.$row["location"].'</li>';  
           }  
      }  
      else  
      {  
           $output .= '<li>location Not Found</li>';  
      }  
      $output .= '</ul>';  
      echo $output;  
 }  
 ?>  