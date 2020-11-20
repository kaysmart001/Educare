<!-- upload material -->
<?php 
if (@$_GET['q']=='upload') {
  if (isset($_POST['upload']) && !empty($_FILES['file']) && !empty($_POST['desc'])) {
  //file description
    $desc= $_POST['desc'];
  // name of the uploaded file
    $filename = $_FILES['file']['name'];

    // destination of the file on the server
    $destination = '../uploads/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['file']['tmp_name'];
    $size = $_FILES['file']['size'];

    if (!in_array($extension, ['zip', 'pdf', 'docx','doc','png','jpg','jpeg','gif'])) {
        echo "<script> alert('Your file extension must be .zip, .pdf, .docx, .doc, .png, .jpg, .jpeg or .gif');</script>";
    }else {
        // move the uploaded (temporary) file to the specified destination
        if (move_uploaded_file($file, $destination)) {
            $sql = "INSERT INTO files (description,name,size,downloads) VALUES ('$desc','$filename','$size', 0)";
            if (mysqli_query($conn, $sql)) {
                echo "<script> alert('File uploaded successfully');</script>";
                echo "<script> document.location.href='admin_dashboard.php?q=11';</script>";
            }
        } else {
            echo "<script> alert('Failed to upload file.');</script>";
        }
    }

}
}


if(@$_GET['q']==10 ) {
echo ' 
<div class="row">
 <div class="col-md-3"></div><div class="col-md-6"><form class="form-horizontal title1" name="form" action="admin_dashboard.php?q=upload"  method="POST" enctype="multipart/form-data">
<fieldset>';
echo '<br /><b>MATERIAL DETAILS</b><br /><br />
<div class="form-group">
  <label class="col-md-12 control-label" for="desc">Description</label>  
  <div class="col-md-12">
  <textarea rows="3" cols="5" name="desc" class="form-control" placeholder="Write Material Description here..." id="desc"></textarea>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for="file">Choose File</label>  
  <div class="col-md-12">
  <input id="file" name="file" placeholder="Choose file" class="form-control input-md" type="file">
    
  </div>
</div>';
echo '<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Upload" class="btn btn-primary" name="upload"/>
  </div>
</div>

</fieldset>
</form></div>';
}

?>


<!-- manage materials -->
<?php 
if(@$_GET['q']==11) {
$result = mysqli_query($conn,"SELECT * FROM files") or die('Error 250');
echo  '<div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>S.N.</b></td><td><b>Description</b></td><td><b>Name</b></td><td><b>Size</b></td><td><b>No of Downloads</b></td><td><b>Action</b></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
  $fileid=$row['id'];
  $desc = $row['description'];
  $name = $row['name'];
  $size = floor($row['size']/1000).'KB';
  $downloads = $row['downloads'];

  echo '<tr><td>'.$c++.'</td><td>'.$desc.'</td><td>'.$name.'</td><td>'.$size.'</td><td>'.$downloads.'</td>
  <td><a title="Delete Event" href="update.php?defile='.$fileid.'"><b><span class="glyphicon glyphicon-trash" aria-hidden="true">Delete</span></b></a></td></tr>';
}
$c=0;
echo '</table></div>';

}
?>