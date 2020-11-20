<?php
include_once 'dbConnection.php';
session_start();
if((!isset($_SESSION['fullname']))){
header("location:../user_dashboard.php");

}else{
  $name=$_SESSION['fullname'];
  $email=$_SESSION['email'];
}

//quiz start
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2){
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$ans=$_POST['ans'];
$qid=@$_GET['qid'];
$minute=explode(':',$_POST['timetaken'])[0];
$seconds=end(explode(':',$_POST['timetaken']));
if(strlen($minute)==2){
$minute=str_pad($minute,3,0,STR_PAD_LEFT);
}
if (strlen($seconds)==2) {
  $seconds=str_pad($seconds,3,0,STR_PAD_LEFT);
}
$timetaken=$minute.':'.$seconds;
$q=mysqli_query($conn,"SELECT ansid FROM questions WHERE qid='$qid' " ) or die('Error 76');
while($row=mysqli_fetch_array($q) )
{
$ansid=$row['ansid'];
}
$q20=mysqli_query($conn,"SELECT * FROM answers WHERE qid='$qid' and email='$email' and eid='$eid' and sn='$sn' " );
$answers=mysqli_fetch_all($q20,MYSQL_ASSOC);
if (mysqli_num_rows($q20)>=1) {
    $answer=mysqli_query($conn,"UPDATE answers SET ansid='$ans' WHERE qid='$qid'" ) or die('Error in updating answers');
}else{
    $answer=mysqli_query($conn,"INSERT INTO answers VALUES(null,'$sn','$email','$eid','$qid','$ans')" ) or die('Error in saving answers');
}

if($sn != $total)
{
if (isset($_POST['prev'])) {
    $sn-=1;
}else{
  $sn++;  
}

header("location:user_dashboard.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error 86');
}
else if( $_SESSION['key']!='balex08085744967')
{
$q30=mysqli_query($conn,"SELECT * FROM answers WHERE email='$email' AND eid='$eid'")or die('Error 101');
$results=mysqli_fetch_all($q30,MYSQLI_ASSOC);
$r=0;
$w=0;
foreach ($results as $res) {
    $userqid=$res['qid'];
    $useransid=$res['ansid'];
    $usersn=$res['sn'];
    $ueid=$res['eid'];
    $q31=mysqli_query($conn,"SELECT * FROM questions WHERE qid='$userqid' AND eid='$ueid' AND sn='$usersn'")or die('Error 102');
    $correctans=mysqli_fetch_assoc($q31);
    $ca=$correctans['ansid'];
    if($useransid==$ca){
       $r++;
       $q32= mysqli_query($conn,"SELECT * FROM result WHERE email='$email' AND eid='$ueid'")or die('Error 103');
       $q34=mysqli_query($conn,"SELECT * FROM quiz WHERE eid='$ueid'")or die('Error 105');
       $q35=mysqli_fetch_assoc($q34);
       $sahi=$q35['sahi'];
       $score=$sahi;
       if(mysqli_num_rows($q32)<1){
        $q33=mysqli_query($conn,"INSERT INTO result VALUES('$email','$ueid','$score','$total','1','0',NOW())")or die('Error 104');
       }else{
        $q36=mysqli_query($conn,"UPDATE result SET score= score+ '$score',sahi='$r',level='$total' WHERE email='$email' AND eid='$ueid'")or die('Error 105');
       }
    }else{
        $w++;
        $q38=mysqli_query($conn,"UPDATE result SET wrong='$w',level='$total' WHERE email='$email' AND eid='$ueid'")or die('Error 108');
        $q37=mysqli_query($conn,"INSERT INTO wrong VALUES('$ueid','$userqid','$email')")or die('Error 106');
    }
}
$q39=mysqli_query($conn,"SELECT * FROM result WHERE email='$email' AND eid='$eid'")or die('Error 111');
$userresults=mysqli_fetch_assoc($q39);
$s=$userresults['score'];
$level=$userresults['level'];
$right=$userresults['sahi'];
$wrong=$userresults['wrong'];
$q40=mysqli_query($conn,"SELECT * FROM rank WHERE email='$email' AND eid='$eid'")or die('Error 419');
$rowcount=mysqli_num_rows($q40);
if($rowcount == 0)
{
$q41=mysqli_query($conn,"INSERT INTO rank(email,eid,score,timetaken,time) VALUES('$email','$eid','$s','$timetaken',NOW())")or die('Error 409');
}
else
{
while($row=mysqli_fetch_array($q40))
{
$score=$row['score'];
}
$score=$s;
$q42=mysqli_query($conn,"UPDATE rank SET score='$score' ,time=NOW(), timetaken='$timetaken' WHERE email= '$email' AND eid='$eid'")or die('Error 174');
}
$getcourses=mysqli_query($conn,"SELECT * FROM purchased_courses WHERE user_id='$email' AND course_id='$eid'");
if(mysqli_num_rows($getcourses)>0){
 $updatetrials=mysqli_query($conn,"UPDATE purchased_courses SET trials=trials-1 WHERE user_id='$email' AND course_id='$eid'");
}
$history=mysqli_query($conn,"INSERT INTO history VALUES('$email','$eid','$s','$level','$right','$wrong','$timetaken',NOW())")or die('Error 202');
$activity=mysqli_query($conn,"INSERT INTO activity VALUES('$email','$eid','finished')");
header("location:user_dashboard.php?q=result&eid=$eid");
}
}
?>



