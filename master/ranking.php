<!-- ranking start -->
<?php 
if(@$_GET['q']== 2) 
{
	$q=mysqli_query($conn,"SELECT DISTINCT eid FROM rank" )or die('Error223');
	$quizzes=mysqli_fetch_all($q,MYSQLI_ASSOC);
	foreach ($quizzes as $quiz) {
	  $eid=$quiz['eid'];
	  $qu=mysqli_query($conn,"SELECT * FROM rank WHERE eid='$eid' ORDER BY score DESC,timetaken ASC LIMIT 10" )or die('Error253');
	  $q15=mysqli_query($conn,"SELECT title FROM quiz WHERE eid='$eid' " )or die('Error239');
	  $course=mysqli_fetch_assoc($q15);
	  $courseName=$course['title'];
	  $selections=mysqli_fetch_all($qu,MYSQLI_ASSOC);
	  echo  '<div class="table-responsive">
	                  <table class="table table-striped" >
	                    <h4 style="background-color:midnightblue; color: white; width:25ch; border-radius:30px; margin: 5px auto">'.$courseName.'</h4>
	                    <tr>
	                      <th colspan="5"><i class="ti-star"></i>Top 10 scholars</th>
	                    </tr>
	                    <tr style="color:midnightblue"><td><b>Rank</b></td><td><b>Name</b></td><td><b>Department</b></td><td><b>Score</b></td><td><b>Time-taken</b></td>
	                    </tr>';
	                    $c=0;
	  foreach ($selections as $selection) {
	      $e=$selection['email'];
	      $s=$selection['score'];
	      $eid=$selection['eid'];
	      $timetaken=$selection['timetaken'];
	      $q12=mysqli_query($conn,"SELECT * FROM users WHERE user_email='$e' " )or die('Error231');
	      $names=mysqli_fetch_assoc($q12);
	      $name=$names['user_name'];
	      $dept=$names['user_dept'];
	          
	                    
	                    
	                    $c++;
	                    if ($c==1) {
	                      echo '<tr><td style="color:gold"><span class="ti-star" aria-hidden="true"></span><b>'.$c.'<sup>st</sup></b></td><td>'.$name.'</td><td>'.$dept.'</td><td>'.$s.'</td><td>'.$timetaken.'</td></tr>';
	                    }elseif ($c==2) {
	                      echo '<tr><td style="color:silver"><span class="ti-star" aria-hidden="true"></span><b>'.$c.'<sup>nd</sup></b></td><td>'.$name.'</td><td>'.$dept.'</td><td>'.$s.'</td><td>'.$timetaken.'</td></tr>';
	                    }elseif ($c==3) {
	                      echo '<tr><td style="color:midnightblue"><span class="ti-star" aria-hidden="true"></span><b>'.$c.'<sup>rd</sup></b></td><td>'.$name.'</td><td>'.$dept.'</td><td>'.$s.'</td><td>'.$timetaken.'</td></tr>';
	                    } else{
	                      echo '<tr><td style="color:#99cc32"><b>'.$c.'<sup>th</sup></b></td><td>'.$name.'</td><td>'.$dept.'</td><td>'.$s.'</td><td>'.$timetaken.'</td></tr>';
	                    }
	      
	              }
	      echo '</table></div>';

	    }
}

?>