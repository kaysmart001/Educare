<?php 
if (isset($_GET['action'])) {
    if(@$_GET['action']== 'start')
    {
    $eid=@$_GET['eid'];
    $clearactivity=mysqli_query($conn,"DELETE FROM activity WHERE eid='$eid' AND email='$email'")or die('Error 605');
    $clearresult=mysqli_query($conn,"DELETE FROM result WHERE eid='$eid' AND email='$email'")or die('Error 600');
    $q=mysqli_query($conn,"INSERT INTO result VALUES('$email','$eid','0','0','0','0',NOW())")or die('Error 512');
    $clearwrong=mysqli_query($conn,"DELETE FROM wrong WHERE eid='$eid' AND email='$email'")or die('Error 504');
    $clearanswer=mysqli_query($conn,"DELETE FROM answers WHERE eid='$eid' AND email='$email'")or die('Error 602'); ?>
    <script type="text/javascript">
        sessionStorage.clear();
    </script>
    <?php
    }
}
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$checkcourse=mysqli_query($conn,"SELECT eid FROM quiz WHERE price !='free'" );
$premiumcourses=[];
while ($premium=mysqli_fetch_assoc($checkcourse)) {
  $premiumcourses[]=$premium['eid'];
}
if (in_array($eid, $premiumcourses)) {
  $sub=mysqli_query($conn,"SELECT * FROM purchased_courses WHERE course_id='$eid' AND user_id='$email' AND trials >0" );
  if (mysqli_num_rows($sub)<1) {
    die("<h3>you did not purchase this course!</h3>");
  }
}
$q24=mysqli_query($conn,"SELECT * FROM activity WHERE email='$email' and eid='$eid'" );
$useractivity=mysqli_num_rows($q24);
if ($useractivity>0) {
  header("location:user_dashboard.php?q=30") or die('Error in redirecting');
}
$timer=mysqli_query($conn,"SELECT * FROM quiz WHERE eid='$eid'")or die('Error 650');
$time=mysqli_fetch_assoc($timer);
$duration = $time['time'];
$exam_start_time = date('Y-m-d H:i:s');
$q=mysqli_query($conn,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];
$q99=mysqli_query($conn,"SELECT * FROM answers WHERE eid='$eid' AND qid='$qid' AND email='$email' " );
$ansqns=mysqli_fetch_assoc($q99);
$userans=$ansqns['ansid'];
 echo 
 "<div class='clearfix'>
  <h4 class='float-right text-primary' id='exam_timer'></h4>
 </div>
<h3>Question $sn of $total</h3>
<h5> $qns</h5>";
echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal">
    <input type="hidden" id="timetaken" name="timetaken"/>
<br />';
$oa=$row['oa'];
$ob=$row['ob'];
$oc=$row['oc'];
$od=$row['od'];
$oaid=$row['oaid'];
$obid=$row['obid'];
$ocid=$row['ocid'];
$odid=$row['odid'];
?>
<script type="text/javascript"> 
    var minutes = sessionStorage.getItem('mins');
    var seconds=sessionStorage.getItem('secs');
    var minutesTaken=sessionStorage.getItem('minstaken');
    var secondsTaken=sessionStorage.getItem('secstaken');
      if (!minutes){
      minutes = <?php echo $duration; ?>;
      }
      if (!seconds){
      seconds = 00 ;
      }
      if(!minutesTaken){
        minutesTaken=00;
      }
      if(!secondsTaken){
        secondsTaken=00;
      }
      var interval = setInterval(function () {
        seconds--;
          if (seconds < 0){
            if(minutes !=0){
             minutes--;
             seconds = 59
            }
             
          }
        secondsTaken++;
    if (secondsTaken > 59 ){
            minutesTaken++;
            secondsTaken=0;
          }
    sessionStorage.setItem('minstaken',minutesTaken);
    sessionStorage.setItem('secstaken',secondsTaken);
    sessionStorage.setItem('mins', minutes);
    sessionStorage.setItem('secs', seconds);
    document.getElementById('exam_timer').innerText=minutes+'m:'+seconds+'s';
    document.getElementById('timetaken').value=minutesTaken+'m:'+secondsTaken+'s';
    if (minutes<2) {
        document.getElementById('exam_timer').classList.add('text-danger');
    }
    if (minutes==0) {
        if (seconds==0) {
        document.getElementById('exam_timer').innerText='Time up!';
        clearInterval(interval);
        minutes=0;
        seconds=0;
        window.location="<?php echo 'update.php?q=quiz&step=2&eid='.$eid.'&n='.$total.'&t='.$total?> ";
        }   
    }
}, 1000);
</script>
<?php echo '('.substr($oaid, -1).')'; ?> <input type="radio" name="ans" value="<?php echo $oaid; ?>" id="<?php echo $oaid; ?>" <?php echo $userans==$oaid? 'checked':''; ?>><label for="<?php echo $oaid; ?>"> <?php echo $oa; ?> </label><br>
<?php echo '('.substr($obid, -1).')'; ?> <input type="radio" name="ans" value="<?php echo $obid; ?>" id="<?php echo $obid; ?>" <?php echo $userans==$obid? 'checked':''; ?>><label for="<?php echo $obid; ?>"> <?php echo $ob; ?> </label><br>
<?php echo '('.substr($ocid, -1).')'; ?> <input type="radio" name="ans" value="<?php echo $ocid; ?>" id="<?php echo $ocid; ?>" <?php echo $userans==$ocid? 'checked':''; ?>><label for="<?php echo $ocid; ?>"> <?php echo $oc; ?> </label><br>
<?php echo '('.substr($odid, -1).')'; ?> <input type="radio" name="ans" value="<?php echo $odid; ?>" id="<?php echo $odid; ?>" <?php echo $userans==$odid? 'checked':''; ?>><label for="<?php echo $odid; ?>"> <?php echo $od; ?> </label><br>
<?php
}
echo "<br>";
        if ($sn>1) {
       echo '<button type="submit" class="btn btn-primary rounded mr-5" name="prev" formaction="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'"><span class="ti-arrow-left" aria-hidden="true"></span>&nbsp;Previous
        </button>';
    }
    if ($sn<$total) {
        echo "<button type='submit' class='btn btn-primary rounded'><span class='ti-arrow-right' aria-hidden='true'></span>&nbsp;Next
        </button></form></div>";
    }
    if ($sn==$total) {
        echo "<button type='submit' class='btn btn-primary rounded'><span class='ti-lock' aria-hidden='true'></span>&nbsp;Finish
        </button></form></div>";
    }
    
        $q100=mysqli_query($conn,"SELECT * FROM questions WHERE eid='$eid'");
        $allquestions=mysqli_fetch_all($q100,MYSQLI_ASSOC);
        foreach ($allquestions as $all) {
            $cn=$all['sn'];
            $eid=$all['eid'];
            $thisqid=$all['qid']; 
            $q34=mysqli_query($conn,"SELECT * FROM answers WHERE eid='$eid' AND email='$email' AND qid='$thisqid' AND ansid !=''");
            if(mysqli_num_rows($q34)>0){
                $class='btn-primary';
            }else{
                $class='btn-secondary';
            }
            ?>
            <a class="<?php echo $class ?> btn rounded m-2" href="<?php echo "user_dashboard.php?q=quiz&step=2&eid=$eid&n=$cn&t=$total" ?>"><?php echo $cn;?>
        </a>
        
<?php
        }
}
?>

<!-- display result -->
<?php require_once 'result.php'; ?>
