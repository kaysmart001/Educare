<?php
$sql = "SELECT * FROM files";
$result = mysqli_query($conn, $sql);

$files = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<div class="container">
  <div class="row">
    <?php foreach ($files as $file): ?>
  <div class="col-lg-3 col-sm-6 col-md-4 col-xs-6">
    <div class="card p-2 rounded hover-shadow">
      <!-- <img class="card-img-top rounded-0" src="images/courses/course-1.jpg" alt="course thumb"> -->
      <div class="card-body">
        <a href="#">
          <h4 class="card-title course-title"><?php echo $file['name']; ?></h4>
        </a>
        
        <p class="card-text mb-3"><i class="ti-file"></i> <?php echo $file['description']; ?></p>
        <p class="card-text mb-2"><i class="ti-list mr-1"></i> <?php echo floor($file['size'] / 1000) . ' KB'; ?></p>
        <p class="card-text mb-2"><i class="ti-arrow-down mr-1"> </i><?php echo $file['downloads']; ?> downloads</p>

        <a href="download.php?file_id=<?php echo $file['id'] ?>" class="btn btn-primary btn-sm">Download</a>
      </div>
    </div>
  </div>
  <?php endforeach;?>
  </div>
</div>
