<?php
$sql = "SELECT * FROM files";
$result = mysqli_query($conn, $sql);

$files = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<div class="container">
  <div class="row" id="myItems">
    <div class="col-md-8 offset-md-2 mb-3">
           <!-- Search form -->
            <form class="form-inline d-flex justify-content-center md-form form-sm active-cyan active-cyan-2 mt-2">
              <i class="ti-search" aria-hidden="true"></i>
              <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search Course"
                aria-label="Search" id="myFilter" onkeyup="myFunction()">
            </form>
    </div>
    <?php foreach ($files as $file): ?>
  <div class="col-lg-4 col-sm-6 col-md-4 col-xs-6 course-item">
    <div class="card p-2 rounded hover-shadow">
      <h4 class="card-header course-title"><?php echo $file['name']; ?></h4>
      <div class="card-body">
        <h6 class="card-title mb-3"><i class="ti-file"></i> <?php echo $file['description']; ?></h6>
        <ul class="list-group mb-2">
            <li class="list-group-item d-flex justify-content-between align-items-center">
            <i class="ti-list mr-1"> Size</i>
            <span class="badge badge-primary badge-pill" style="background-color: midnightblue;"><?php echo floor($file['size'] / 1000) . ' KB'; ?></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
            <i class="ti-arrow-down mr-1"> Downloaded Times</i>
            <span class="badge badge-primary badge-pill" style="background-color: midnightblue;"><?php echo $file['downloads']; ?></span>
            </li>
        </ul>
        <div class="card-footer text-muted">
        <a href="download.php?file_id=<?php echo $file['id'] ?>" class="btn btn-primary btn-sm">Download</a>
        </div>
      </div>
    </div>
  </div>
  <?php endforeach;?>
  </div>
</div>
