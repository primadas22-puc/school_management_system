<?php
session_start();
?>
<?php
		include("connect.php");
	    if(isset($_POST['submit']))
		{
	    $id=$_POST['id'];
	    $password=$_POST['password'];
	    
	    
	    $sql="Select id,password from  student where id='$id' and password='$password';";
        $sql1="Select ad_id,password from  admin where ad_id='$id' and password='$password';";
        $sql2="Select id,password from  teacher where id='$id' and password='$password';";
	    $r=$conn->query($sql);
        $r1=$conn->query($sql1);
        $r2=$conn->query($sql2);

		//echo "$r->num_rows";
	    if($r->num_rows>0)
	   {
	   	$_SESSION['user_id']=$id;
         $_SESSION['student_login_status']="loged in";
	      header("Location:Student/index.php");
	   }
       elseif($r1->num_rows>0)
       {
       	$_SESSION['user_id']=$id;
        $_SESSION['admin_login_status']="loged in";
         header("Location:Admin/index.php");

       }
       elseif($r2->num_rows>0)
       {
       	$_SESSION['user_id']=$id;
         $_SESSION['teacher_login_status']="loged in";
         header("Location:Teacher/index.php");

       }

	   else
	   {
		   echo "<p style='color:red;'>Incorrect Username or Password</p>";
	  }
	  }
	?>	