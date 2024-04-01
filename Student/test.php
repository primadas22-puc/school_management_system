
<form action="test.php" method="post">
<td name="jjj" value="name">name</td>
<input type="submit" name="s">	
</form>

<?php 

  if(isset($_POST['s']))
  {
  	echo $_POST['jjj'];
  }

 ?>
