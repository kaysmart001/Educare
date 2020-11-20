<!--quiz start-->
<?php
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$q=mysqli_query($conn,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];
echo "<h3> Question $sn of $total</h3>";
echo "<h5> $qns</h5>";
echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal">
<br />';
$oa=$row['oa'];
$ob=$row['ob'];
$oc=$row['oc'];
$od=$row['od'];
$oaid=$row['oaid'];
$obid=$row['obid'];
$ocid=$row['ocid'];
$odid=$row['odid'];
echo '('.substr($oaid, -1).')<input type="radio" name="ans" value="'.$oaid.'" id="'.$oaid.'"><label for="'.$oaid.'">'.$oa.'</label><br>';
echo '('.substr($obid, -1).')<input type="radio" name="ans" value="'.$obid.'" id="'.$obid.'"><label for="'.$obid.'">'.$ob.'</label><br>';
echo '('.substr($ocid, -1).')<input type="radio" name="ans" value="'.$ocid.'" id="'.$ocid.'"><label for="'.$ocid.'">'.$oc.'</label><br>';
echo '('.substr($odid, -1).')<input type="radio" name="ans" value="'.$odid.'" id="'.$odid.'"><label for="'.$odid.'">'.$od.'</label><br>';
}
echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
}

//result display
if(@$_GET['q']== 'result' && @$_GET['eid']) 
{
$eid=@$_GET['eid'];
$q=mysqli_query($conn,"SELECT * FROM result WHERE eid='$eid' AND email='$email' " )or die('Error157');
echo  '<div class="panel">
<center><h1 class="title" style="color:#660033">Result</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['wrong'];
$r=$row['sahi'];
$qa=$row['level'];
echo '<tr style="color:#66CCFF"><td>Total Questions</td><td>'.$qa.'</td></tr>
      <tr style="color:#99cc32"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
    <tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
    <tr style="color:#66CCFF"><td>Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
}
$q=mysqli_query($conn,"SELECT * FROM rank WHERE  email='$email' " )or die('Error157');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
echo '<tr style="color:#990000"><td>Overall Score&nbsp;<span class="glyphicon glyphicon-stats" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
}
echo '</table></div>';

}
?>
<!--quiz end-->
