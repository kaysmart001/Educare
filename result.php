<?php
if(@$_GET['q']== 'result' && @$_GET['eid']) 
{
$eid=@$_GET['eid'];
$q=mysqli_query($conn,"SELECT * FROM history WHERE eid='$eid' AND email='$email' ORDER BY date DESC LIMIT 1 " )or die('Error157');
$qc=mysqli_query($conn,"SELECT * FROM quiz WHERE eid='$eid'" );

$course=mysqli_fetch_assoc($qc);
$coursecode=$course['title'];
$coursedesc=$course['intro']; ?>
  <div>
  <h3>You can share your score with your friends to impress them &#128521;</h3>
  <a href="<?php echo 'user_dashboard.php?q=result&eid='.$eid.'&action=save' ?>" class="btn btn-danger rounded">Save as pdf</a>
  <a href="<?php echo 'user_dashboard.php?q=result&eid='.$eid.'&action=screenshot' ?>" class="btn btn-success rounded">take a screenshot</a>
    </div>
    <br><br>
<?php
$result='<div class="panel">
  <table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['wrong'];
$r=$row['sahi'];
$qa=$row['level'];
$timetaken=$row['timetaken'];
if ($s >= 0.7 * $qa) {
  $addcoin=mysqli_query($conn,"UPDATE wallet SET coins=coins + 5 WHERE email='$email'" );
  echo "<div class='alert alert-success'>Congrats,You have earned 5 coins!</div>";
}
$result.= '<tr class="text-primary"><td>Student\'s Name:</td><td>'.$user.'</td></tr>
      <tr class="text-primary"><td>Course Code:</td><td>'.$coursecode.'</td></tr>
      <tr class="text-primary"><td>Course Title:</td><td>'.$coursedesc.'</td></tr>
      <tr style="color:#66CCFF"><td>Total Questions:</td><td>'.$qa.'</td></tr>
      <tr style="color:#99cc32"><td>right Answer:&nbsp;<span class="ti-check" aria-hidden="true"></span></td><td>'.$r.'</td></tr>
      <tr style="color:#99cc32"><td>Time taken:&nbsp;<span class="ti-time" aria-hidden="true"></span></td><td>'.$timetaken.'</td></tr> 
    <tr style="color:red"><td>Wrong Answer:&nbsp;<span class="ti-close" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
    <tr style="color:#66CCFF"><td>Score&nbsp;<span class="ti-star" aria-hidden="true"></span></td><td>'.$s.'</td></tr><tr><td colspan="2" style="text-align:center;"><a href="user_dashboard.php?q=25&eid='.$eid.'" class="btn btn-primary rounded">View Correct Answer</a></td></tr>';
}
$result.= '</table>
</div>';
echo $result;

//generating result pdf
if(isset($_GET['action'])){
  if(@$_GET['action']=='save'){
    require_once('pdf/pdf.php');
    $pdf = new Pdf();

    $pdf->set_paper('letter','portrait');

    $file_name = 'Educare('.$coursecode.')Result.pdf';

    $pdf->loadHtml($result);

    $pdf->render();
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename=' . $file_name);
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file_name));

    ob_end_clean();
    $pdf->stream($file_name, array("Attachment" =>1));
    exit(0);
  }
}
}


// showing wrongly answered Questions with their correct answers

if(@$_GET['q']== 25) 
{
$eid=@$_GET['eid'];
$q30=mysqli_query($conn,"SELECT * FROM wrong WHERE  eid='$eid' AND email='$email'" )or die('Error300');
echo '<div class="panel title">
<table class="table table-striped title1" >
<tr><td><b>Q.No</b></td><td><b>Question</b></td><td><b>Correct Answer</b></td></tr>';
while($row=mysqli_fetch_array($q30))
{
 $qid=$row['qid'];
 $wa=mysqli_query($conn,"SELECT * FROM questions WHERE  qid='$qid'" )or die('Error 350');
while($row=mysqli_fetch_array($wa))
{
 $qns=$row['qns'];
 $sn=$row['sn'];
 $correct=$row['ansid'];
 $a=$row['oa'];
 $b=$row['ob'];
 $c=$row['oc'];
 $d=$row['od'];
 $oaid=$row['oaid'];
 $obid=$row['obid'];
 $ocid=$row['ocid'];
 $odid=$row['odid'];
  switch ($correct) {
    case $oaid:
      $cr=$a;
      break;
    case $obid:
      $cr=$b;
      break;
    case $ocid:
      $cr=$c;
      break;
    case $odid:
      $cr=$d;
      break;
    
    default:
      $cr='null';
      break;
  }
 echo '<tr><td>'.$sn.'</td><td>'.$qns.'</td><td>'.$cr.'</td></tr>';
}
}
echo'</table></div>';
}
?>