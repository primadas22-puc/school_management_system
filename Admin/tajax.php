<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "amader_pathsala");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM teacher 
  WHERE id LIKE '%".$search."%'
  OR name LIKE '%".$search."%' 
  OR gender LIKE '%".$search."%'
  OR address LIKE '%".$search."%'
  OR mobile LIKE '%".$search."%'

  
 ";
}
else
{
 $query = "
  SELECT * FROM teacher ORDER BY id
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th> ID</th>
     <th>NAME</th>
    <th>GENDER</th>
     <th>ADDRESS</th>
     <th>MOBILE</th>
     <th>ACTION</th>
    
     
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["id"].'</td>
    <td>'.$row["name"].'</td>
    
    <td>'.$row["gender"].'</td>
    <td>'.$row["address"].'</td>
    <td>'.$row["mobile"].'</td>

    
    <td> &nbsp;&nbsp;<a href="editteacher.php?id='.$row["id"].'">
      <p class="fa fa-edit"></p></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="process_delete2.php?delid='.$row["id"].'">
      <p class="fa fa-times-circle"></p> </td>
   
    
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Not Found';
}

?>




