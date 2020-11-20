<!--feedback start-->
<?php 
if(@$_GET['q']==3) {
$result = mysqli_query($conn,"SELECT * FROM `feedback` ORDER BY `feedback`.`date` DESC") or die('Error');
echo  '<div class="table-responsive"><table class="table table-striped">
		<tr>
		<th>S.N.</th>
		<th>Subject</th>
		<th>Email</th>
		<th>Date</th>
		<th>Time</th>
		<th>By</th>
		<th colspan="2">Action</th>
		</tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
	$date = $row['date'];
	$date= date("d-m-Y",strtotime($date));
	$time = $row['time'];
	$subject = $row['subject'];
	$name = $row['name'];
	$email = $row['email'];
	$id = $row['id'];
	 echo '<tr><td>'.$c++.'</td>';
	echo '<td><a title="Click to open feedback" href="admin_dashboard.php?q=3&fid='.$id.'">'.$subject.'</a></td><td>'.$email.'</td><td>'.$date.'</td><td>'.$time.'</td><td>'.$name.'</td>
	<td><a title="Open Feedback" href="admin_dashboard.php?q=3&fid='.$id.'"><b><span class="glyphicon glyphicon-folder-open" aria-hidden="true">Open</span></b></a></td>';
	echo '<td><a title="Delete Feedback" href="update.php?fdid='.$id.'"><b><span class="glyphicon glyphicon-trash" aria-hidden="true">Delete</span></b></a></td>

	</tr>';
}
echo '</table></div>';
}
?>
<!--feedback end-->

<!--feedback reading portion start-->
<?php 
if(@$_GET['fid']) {
echo '<br />';
$id=@$_GET['fid'];
$result = mysqli_query($conn,"SELECT * FROM feedback WHERE id='$id' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
	$name = $row['name'];
	$subject = $row['subject'];
	$date = $row['date'];
	$date= date("d-m-Y",strtotime($date));
	$time = $row['time'];
	$feedback = $row['feedback'];
	
echo '<div><a title="Back to Archive" href="update.php?q1=2"><b><span class="glyphicon glyphicon-level-up" aria-hidden="true"></span></b></a><h2 style="text-align:center; margin-top:-15px;font-family: "Ubuntu", sans-serif;"><b>'.$subject.'</b></h2>';
 echo '<div class="mCustomScrollbar" data-mcs-theme="dark" style="margin-left:10px;margin-right:10px; max-height:450px; line-height:35px;padding:5px;"><span style="line-height:35px;padding:5px;">-&nbsp;<b>DATE:</b>&nbsp;'.$date.'</span>
<span style="line-height:35px;padding:5px;">&nbsp;<b>Time:</b>&nbsp;'.$time.'</span><span style="line-height:35px;padding:5px;">&nbsp;<b>By:</b>&nbsp;'.$name.'</span><br />'.$feedback.'</div>
</div>';}
}
?>
<!--Feedback reading portion end-->