<?php
include_once '../dbConnection.php';
session_start();
$email=$_SESSION['admin_email'];
//delete feedback
if(isset($_SESSION['key'])){
if(@$_GET['fdid'] && $_SESSION['key']=='balex08085744967') {
$id=@$_GET['fdid'];
$result = mysqli_query($conn,"DELETE FROM feedback WHERE id='$id' ") or die('Error 50');
header("location:admin_dashboard.php?q=3");
}
}

//delete user
if(isset($_SESSION['key'])){
if(@$_GET['demail'] && $_SESSION['key']=='balex08085744967') {
$demail=@$_GET['demail'];
$r1 = mysqli_query($conn,"DELETE FROM rank WHERE email='$demail' ") or die('Error 51');
$r2 = mysqli_query($conn,"DELETE FROM history WHERE email='$demail' ") or die('Error 52');
$result = mysqli_query($conn,"DELETE FROM users WHERE user_email='$demail' ") or die('Error 53');
header("location:admin_dashboard.php?q=1");
}
}
//delete event
if(isset($_SESSION['key'])){
if(@$_GET['deevent'] && $_SESSION['key']=='balex08085744967') {
$deevent=@$_GET['deevent'];
$r20 = mysqli_query($conn,"DELETE FROM events WHERE id='$deevent' ") or die('Error 54');

header("location:admin_dashboard.php?q=9");
}
}
//remove material
if(isset($_SESSION['key'])){
if(@$_GET['defile'] && $_SESSION['key']=='balex08085744967') {
$defile=@$_GET['defile'];
$r21 = mysqli_query($conn,"SELECT * FROM files WHERE id='$defile' ") or die('Error 55');
$file = mysqli_fetch_assoc($r21);
$filepath = '../uploads/' . $file['name'];
if (file_exists($filepath )) {
	unlink($filepath);
}
$r22 = mysqli_query($conn,"DELETE FROM files WHERE id='$defile' ") or die('Error 56');
header("location:admin_dashboard.php?q=11");
}
}
//remove quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquiz' && $_SESSION['key']=='balex08085744967') {
$eid=@$_GET['eid'];
$r3 = mysqli_query($conn,"DELETE FROM questions WHERE eid='$eid' ") or die('Error 70');
$r4 = mysqli_query($conn,"DELETE FROM quiz WHERE eid='$eid' ") or die('Error 71');
$r4 = mysqli_query($conn,"DELETE FROM history WHERE eid='$eid' ") or die('Error 72');
$r5 = mysqli_query($conn,"DELETE FROM rank WHERE eid='$eid' ") or die('Error 73');

header("location:admin_dashboard.php?q=5");
}
}

//add quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'addquiz' && $_SESSION['key']=='balex08085744967') {
$name = $_POST['name'];
$name= strtoupper($name);
$total = $_POST['total'];
$sahi = $_POST['right'];
$time = $_POST['time'];
$desc = $_POST['desc'];
$desc = strtoupper($desc);
$id='educare'.uniqid();
$price=$_POST['price'];
$q3=mysqli_query($conn,"INSERT INTO quiz(eid,title,sahi,total,time,intro,date,price) VALUES  ('$id','$name' , '$sahi' ,'$total','$time' ,'$desc',NOW(),'$price')") or die('Error 73');
if ($q3) {
	header("location:admin_dashboard.php?q=4&step=2&eid=$id&n=$total");
}

}
}
//update quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'updatequiz' && $_SESSION['key']=='balex08085744967') {
$name = $_POST['name'];
$name= strtoupper($name);
$total = $_POST['total'];
$sahi = $_POST['right'];
$time = $_POST['time'];
$desc = $_POST['desc'];
$desc = strtoupper($desc);
$id=$_POST['eid'];
$price=$_POST['price'];
$q4=mysqli_query($conn,"UPDATE quiz SET  title='$name' , sahi='$sahi' ,total='$total',time='$time' ,intro='$desc',price='$price' WHERE eid='$id'") or die('Error updating quiz detail');
if ($q4) {
    header("location:admin_dashboard.php?q=5&update=success");
}

}
}

//update question
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'updatequestion' && $_SESSION['key']=='balex08085744967') {
  $qid=$_POST['qid'];
  $qn=$_POST['qns'];
  $oa=$_POST['oa'];
  $ob=$_POST['ob'];
  $oc=$_POST['oc'];
  $od=$_POST['od'];
  $oaid=$_POST['oaid'];
  $obid=$_POST['obid'];
  $ocid=$_POST['ocid'];
  $odid=$_POST['odid'];
  $ansid=$_POST['ansid'];
  $sn=$_POST['sn'];
$q4=mysqli_query($conn,"UPDATE questions SET  qns='$qn' , oa='$oa' ,ob='$ob',oc='$oc' ,od='$od',oaid='$oaid',obid='$obid',ocid='$ocid',odid='$odid',ansid='$ansid',sn='$sn' WHERE qid='$qid'") or die('Error updating question details');
if ($q4) {
    header("location:admin_dashboard.php?q=50&update=success");
}

}
}

//add more question to quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'addmoreqn' && $_SESSION['key']=='balex08085744967') {
$eid=@$_GET['eid'];
$qid=uniqid();
$qns=$_POST['qns'];
$oaid=uniqid().'a';
$obid=uniqid().'b';
$ocid=uniqid().'c';
$odid=uniqid().'d';
$a=$_POST['oa'];
$b=$_POST['ob'];
$c=$_POST['oc'];
$d=$_POST['od'];
$e=$_POST['ans'];
$sn=$_POST['sn'];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}

$q50=mysqli_query($conn,"INSERT INTO questions(eid,qid,qns,oa,ob,oc,od,oaid,obid,ocid,odid,ansid,sn) VALUES('$eid','$qid','$qns','$a','$b','$c','$d','$oaid','$obid','$ocid','$odid','$ansid','$sn')");
if ($q50) {
  mysqli_query($conn,"UPDATE quiz SET total = total+1 WHERE eid='$eid'");
  header("location:admin_dashboard.php?addmoreqn=success");
} 
}
}



//add question
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'addqns' && $_SESSION['key']=='balex08085744967') {
$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];

for($i=1;$i<=$n;$i++)
 {
$qid=uniqid();
$qns=$_POST['qns'.$i];
$oaid=uniqid().'a';
$obid=uniqid().'b';
$ocid=uniqid().'c';
$odid=uniqid().'d';
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$e=$_POST['ans'.$i];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}

$q50=mysqli_query($conn,"INSERT INTO questions(eid,qid,qns,oa,ob,oc,od,oaid,obid,ocid,odid,ansid,sn) VALUES('$eid','$qid','$qns','$a','$b','$c','$d','$oaid','$obid','$ocid','$odid','$ansid','$i')");
}
header("location:admin_dashboard.php?upload=success");
}
}
//remove question
if(@$_GET['q']=='remove-question'){
  if (isset($_POST['remove-question'])){
  $eid=$_GET['eid'];
  $qid=$_POST['qid'];
  $sn=$_POST['sn'];
  $q=mysqli_query($conn,"DELETE FROM questions WHERE qid='$qid' AND sn='$sn' AND eid='$eid'");
  header("location:admin_dashboard.php?q=50&delete=success");
}

}
//quiz start
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$ans=$_POST['ans'];
$qid=@$_GET['qid'];
$q=mysqli_query($conn,"SELECT ansid FROM questions WHERE qid='$qid'" ) or die('Error 76');
while($row=mysqli_fetch_array($q) )
{
$ansid=$row['ansid'];
}
if($ans == $ansid)
{
	$q=mysqli_query($conn,"SELECT * FROM quiz WHERE eid='$eid' " ) or die('Error 77');
while($row=mysqli_fetch_array($q) )
{
$sahi=$row['sahi'];
}
if($sn == 1)
{
$q=mysqli_query($conn,"INSERT INTO result VALUES('$email','$eid' ,'0','0','0','0',NOW())")or die('Error 78');
}
$q=mysqli_query($conn,"SELECT * FROM result WHERE eid='$eid' AND email='$email' ")or die('Error 79');

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$r=$row['sahi'];
}
$r++;
$q=mysqli_query($conn,"SELECT * FROM quiz WHERE eid='$eid' " )or die('Error 80');
$row=mysqli_fetch_assoc($q);
$sahi=$row['sahi'];
$s+=$sahi;
$q=mysqli_query($conn,"UPDATE `result` SET `score`=$s,`level`=$sn,`sahi`=$r, date= NOW()  WHERE  email = '$email' AND eid = '$eid'")or die('Error 81');

} 
else
{
if($sn == 1)
{
$q=mysqli_query($conn,"INSERT INTO result VALUES('$email','$eid' ,'0','0','0','0',NOW() )")or die('Error 83');
}
$q=mysqli_query($conn,"SELECT * FROM result WHERE eid='$eid' AND email='$email' " )or die('Error 84');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['wrong'];
}
$w++;
$q=mysqli_query($conn,"UPDATE `result` SET `score`=$s,`level`=$sn,`wrong`=$w, date=NOW() WHERE  email = '$email' AND eid = '$eid'")or die('Error 85');
}
if($sn != $total)
{
$sn++;
header("location:admin_dashboard.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error 86');
}
else if( $_SESSION['key']!='balex08085744967')
{
$q=mysqli_query($conn,"SELECT score FROM result WHERE eid='$eid' AND email='$email'" )or die('Error 404');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($conn,"SELECT * FROM rank WHERE email='$email'" )or die('Error 419');
$rowcount=mysqli_num_rows($q);
if($rowcount == 0)
{
$q2=mysqli_query($conn,"INSERT INTO rank(email,score,time) VALUES('$email','$s',NOW())")or die('Error 409');
}
else
{
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$s+$sun;
$q=mysqli_query($conn,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error 174');
}
header("location:admin_dashboard.php?q=result&eid=$eid");
}
else
{
header("location:admin_dashboard.php?q=result&eid=$eid");
}
}

//restart quiz
if(@$_GET['q']== 'quizre' && @$_GET['step']== 25 ) {
$eid=@$_GET['eid'];
$n=@$_GET['n'];
$t=@$_GET['t'];
$q=mysqli_query($conn,"SELECT score FROM result WHERE eid='$eid' AND email='$email'" )or die('Error 156');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($conn,"DELETE FROM `result` WHERE eid='$eid' AND email='$email' " )or die('Error 184');
$q=mysqli_query($conn,"SELECT * FROM rank WHERE email='$email'" )or die('Error 161');
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$sun-$s;
$q=mysqli_query($conn,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error 174');
header("location:admin_dashboard.php?q=quiz&step=2&eid=$eid&n=1&t=$t");
}

?>