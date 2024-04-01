<?php
session_start();
include('connect.php');
  if(isset($_GET['delid']))
  {
    $id = $_GET['delid'];
   $sql = "DELETE FROM student where id=$id";
           $r = $conn->query($sql);
  if($r)
  header("Location:student.php");
  else
    echo "Error";

  }
?>