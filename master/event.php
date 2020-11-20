<!-- add Event -->
<?php
if (isset($_POST['addevent']) && !empty($_POST['desc']) && !empty($_POST['venue']) && !empty($_POST['date'])) {
  $desc=$_POST['desc'];
  $venue=$_POST['venue'];
  $startdate=$_POST['date'];
  $finishdate=$_POST['date2'];

  $q3=mysqli_query($conn,"INSERT INTO events VALUES('null','$desc','$startdate','$finishdate','$venue')") or die('Error 200');
  if ($q3) {
    echo "<script> alert('Event added successfully');</script>";
    echo "<script> document.location.href='admin_dashboard.php?q=9';</script>";
	} else{
			echo "<script> alert('Failed to Add event.');</script>";
		}
}
if(@$_GET['q']==8 ) {
echo '<form class="form-horizontal title1" name="form" action="admin_dashboard.php"  method="POST">
<fieldset>';
echo '<h3>EVENT DETAILS</h3>
<div class="form-group">
  <label class="col-md-12 control-label" for="desc">Description</label>  
  <div class="col-md-12">
  <textarea rows="3" cols="5" name="desc" class="form-control" placeholder="Write Event Description here..." id="desc"></textarea>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="venue">Venue</label>  
  <div class="col-md-12">
  <input id="venue" name="venue" placeholder="Enter Venue" class="form-control input-md" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="date">Start Date</label>  
  <div class="col-md-12">
  <input id="date" name="date" placeholder="Enter event Start Date" class="form-control input-md" type="date">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="date2">Finish Date</label>  
  <div class="col-md-12">
  <input id="date2" name="date2" placeholder="Enter event Finish Date" class="form-control input-md" type="date">
    
  </div>
</div>';
echo '<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" style="margin-left:10%" class="btn btn-primary" value="Submit" class="btn btn-primary" name="addevent"/>
  </div>
</div>

</fieldset>
</form>';
}
?>

<!-- manage events -->
<?php 
if(@$_GET['q']==9) {
$result = mysqli_query($conn,"SELECT * FROM events") or die('Error 201');
echo  '<div class="table-responsive">
        <table class="table table-striped">
          <tr>
          <th>S.N.</th>
          <th>Description</th>
          <th>Venue</th>
          <th>Start date</th>
          <th>Finish date</th>
          <th>Action</th>
          </tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
  $eventid=$row['id'];
  $desc = $row['description'];
  $start = $row['start_date'];
  $finish = $row['finish_date'];
  $venue = $row['venue'];

  echo '<tr><td>'.$c++.'</td><td>'.$desc.'</td><td>'.$venue.'</td><td>'.$start.'</td><td>'.$finish.'</td>
  <td><a title="Delete Event" href="update.php?deevent='.$eventid.'"><b><span class="glyphicon glyphicon-trash" aria-hidden="true">Delete</span></b></a></td></tr>';
}
$c=0;
echo '</table></div>';

}
?>