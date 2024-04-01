<?php
session_start();
include('connect.php');
$x=$_SESSION['x'];
  if(isset($_POST['enroll']))
  {
    for ($i=1; $i < $x; $i++) { 
         $id = $_POST['id'.$i];
    	 $class = $_POST['class'.$i];
          $year = 2019;
   $sql = "insert into enrollment values($id,$class,$year)";
           $r = $conn->query($sql);
    } 

   
   
    header("Location:enrollment.php");


  }
?>