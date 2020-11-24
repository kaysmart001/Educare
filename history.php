<?php if(@$_GET['q']== 2): ?> 
<div class="card shadow mb-4">
<div class="card-header py-3">
  <h4 class="m-2 font-weight-bold text-primary text-center">History</h4>
</div>

<div class="card-body">
  <div class="table-responsive">
    <table class="table table-bordered table-striped" id="dataTable" width="100%" cellspacing="0">        
      <thead class="thead-dark">
          <tr>
            <th>S/N</th>
            <th>Course</th>
            <th>Total Questions</th>
            <th>Right</th>
            <th>Wrong</th>
            <th>Score</th>
            <th>Time Allowed</th>
            <th>Time Spent</th>
            <th>Date</th>
          </tr>
      </thead>
      <tbody>

<?php 
$q=mysqli_query($conn,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC");
$c=0;
while($row=mysqli_fetch_array($q))
{
$eid=$row['eid'];
$s=$row['score'];
$w=$row['wrong'];
$r=$row['sahi'];
$qa=$row['level'];
$timeSpent=$row['timetaken'];
$date=date_create($row['date']);
$q23=mysqli_query($conn,"SELECT title,`time` FROM quiz WHERE  eid='$eid'" );
while($row=mysqli_fetch_array($q23))
{
$title=$row['title'];
$timeAllowed=$row['time'];
}
$c++;
echo '<tr>
		<td>'.$c.'</td>
		<td>'.$title.'</td>
		<td>'.$qa.'</td>
		<td>'.$r.'</td>
		<td>'.$w.'</td>
		<td>'.$s.'</td>
		<td>'.$timeAllowed.'mins </td>
		<td>'.$timeSpent.'</td>
		<td>'.date_format($date,'j F Y').'</td>
	</tr>';
}

?>
      </tbody>
    </table>
  </div>
</div>
</div>
<?php endif; ?>