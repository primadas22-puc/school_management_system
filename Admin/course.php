<?php
   session_start();
   if($_SESSION['admin_login_status']!="loged in" and ! isset($_SESSION['user_id']) )
    header("Location:Admin/index.php");
   
   if(isset($_GET['sign']) and $_GET['sign']=="out") {
  $_SESSION['admin_login_status']="loged out";
  unset($_SESSION['user_id']);
   header("Location:../index.php");    
   }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Student Enrollment</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Bars Css -->
    <link rel="stylesheet" href="css/bar.css">
    <!--// Bars Css -->
    <!-- Calender Css -->
    <link rel="stylesheet" type="text/css" href="css/pignose.calender.css" />
    <!--// Calender Css -->
    <!-- Common Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Nav Css -->
    <link rel="stylesheet" href="css/style4.css">
    <!--// Nav Css -->
    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->
</head>

<body>

    <?php 
include("inc/nav.php")
 ?>
                          
        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
              <?php 
       include("inc/uppernav.php");

            ?>
            <!--// top-bar -->
            <div class="container-fluid">


<div class="outer-w3-agile col-xl ml-xl-3 mt-xl-0 mt-3 report">
                        <h4 class="tittle-w3-agileits mb-4">ASSIGN COURSE</h4>

               

<form action="course.php" method="post" enctype="multipart/form-data" onsubmit="return validateForm()"name="myForm">
<table  align="center" bgcolor="#0000ff">
<tr><td style="color:white;" width="300px">



<tr><td style="color:white;" width="200px">TEACHER: </td><td>
<select name="teacher_name">

<?php

 include("connect.php");
 
 $sql="select name from teacher";

 $r=$conn->query($sql);
 
 if($r->num_rows>0)
 {
    
    while($row=$r->fetch_assoc())
    {
        $name=$row['name'];

        echo "<option value='$name'>$name</option>";
    }
 }
 
 
?>

</select>
</td></tr>



<tr><td style="color:white;" width="300px">CLASS: </td><td>
<select name="class_name">

    <?php

 include("connect.php");
 
 $sql="select class_name from class";

 $r=$conn->query($sql);
 
 if($r->num_rows>0)
 {
    
    while($row=$r->fetch_assoc())
    {
        $class_name=$row['class_name'];
        echo "<option value='$class_name'>$class_name</option>";
    }
 }
 
 
?>



</select>
</td></tr>




<tr><td style="color:white;" width="300px">SUBJECT: </td><td>
<select name="subject_name">

    <?php

 include("connect.php");
 
 $sql="select subject_name from subject";

 $r=$conn->query($sql);
 
 if($r->num_rows>0)
 {
    
    while($row=$r->fetch_assoc())
    {
        $subject_name=$row['subject_name'];
        echo "<option value='$subject_name'>$subject_name</option>";
    }
 }
 
 
?>

</select>
<option></option>
</td></tr>

<tr><td width="300px"></td><td><input name="submit" type="submit" value="SUBMIT"/></td></tr>


</table>

</form>








                     
                        </div>



                   </div>
       
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>© 2018 Modernize . All Rights Reserved | Design by
                    <a href="http://w3layouts.com/"> W3layouts </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>


    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->
    
    <!-- loading-gif Js -->
    <script src="js/modernizr.js"></script>
    <script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>
    <!--// loading-gif Js -->

    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!--// Sidebar-nav Js -->


    <!-- Bar-chart -->
    <script src="js/rumcaJS.js"></script>
    <script src="js/example.js"></script>
    <!--// Bar-chart -->
    <!-- Calender -->
    <script src="js/moment.min.js"></script>
    <script src="js/pignose.calender.js"></script>
    <script>
        //<![CDATA[
        $(function () {
            $('.calender').pignoseCalender({
                select: function (date, obj) {
                    obj.calender.parent().next().show().text('You selected ' +
                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                        '.');
                }
            });

            $('.multi-select-calender').pignoseCalender({
                multiple: true,
                select: function (date, obj) {
                    obj.calender.parent().next().show().text('You selected ' +
                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                        '~' +
                        (date[1] === null ? 'null' : date[1].format('YYYY-MM-DD')) +
                        '.');
                }
            });
        });
        //]]>
    </script>
    <!--// Calender -->

    <!-- profile-widget-dropdown js-->
    <script src="js/script.js"></script>
    <!--// profile-widget-dropdown js-->

    <!-- Count-down -->
    <script src="js/simplyCountdown.js"></script>
    <link href="css/simplyCountdown.css" rel='stylesheet' type='text/css' />
    <script>
        var d = new Date();
        simplyCountdown('simply-countdown-custom', {
            year: d.getFullYear(),
            month: d.getMonth() + 2,
            day: 25
        });
    </script>
    <!--// Count-down -->



    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>


<?php
if(isset($_POST['submit']))
{
  
  
  include("connect.php");   
   $teacher_name=$_POST['teacher_name'];
   $class_name=$_POST['class_name'];
   $subject_name=$_POST['subject_name'];
  
  echo   $sql="insert into course(teacher_name,class_name,subject_name) values('$teacher_name','$class_name','$subject_name')";
     $r = $conn->query($sql);
            if($r)
            {
                echo "Successful";
          
        }
        else
        {
            echo "connection error";
        }
        
}
?>

