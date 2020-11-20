<?php 
  if(@$_GET['q']==1) {

  $result = mysqli_query($conn,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
  echo  '<div class="table-responsive"><table class="table table-striped title1">
  <tr><td><b>S.N.</b></td><td><b>Topic</b></td><td><b>Total questions</b></td><td><b>Total Marks</b></td><td><b>Time limit</b></td><td></td></tr>';
  $c=1;
  while($row = mysqli_fetch_array($result)) {
    $title = $row['title'];
    $total = $row['total'];
    $sahi = $row['sahi'];
      $time = $row['time'];
    $eid = $row['eid'];
  $q12=mysqli_query($conn,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
  $rowcount=mysqli_num_rows($q12);  
  if($rowcount == 0){
    echo '<tr><td>'.$c++.'</td><td>'.$title.'</td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
    <td><b><a href="user_dashboard.php?q=quiz&step=2&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn btn-primary rounded"><span class="ti-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
  }
  else
  {
  echo '<tr title="This test has been taken by you already"><td>'.$c++.'</td><td>'.$title.'&nbsp;<span class="ti-line-double" aria-hidden="true"></span></td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
    <td><b><a href="update.php?q=quizre&step=25&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn btn-danger rounded"><span class="ti-reload" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Restart</b></span></a></b></td></tr>';
  }
  }
  $c=0;
  echo '</table></div>';

  }
 ?>