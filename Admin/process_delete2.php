<?php
session_start();
include('connect.php');
  if(isset($_GET['delid']))
  {
    $id = $_GET['delid'];
   $sql = "DELETE FROM teacher where id=$id";
           $r = $conn->query($sql);
  if($r)
  header("Location:teacher.php");
  else
    echo "Error";

  }
?>