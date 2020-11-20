<?php 
include_once('dbConnection.php');
session_start();
$eid='5e7e0d13f2243';
$checkcourse=mysqli_query($conn,"SELECT eid FROM quiz WHERE price !='free'" );
$premiumcourses=[];
while ($premium=mysqli_fetch_assoc($checkcourse)) {
  $premiumcourses[]=$premium['eid'];
}
if (in_array($eid, $premiumcourses)) {
  $sub=mysqli_query($conn,"SELECT * FROM purchased_courses WHERE course_id='$eid' AND user_id='$email' AND trials >0" );
  if (mysqli_num_rows($sub)==0) {
  header("location:user_dashboard.php?q=30");
   }
}


 ?>