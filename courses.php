<?php include 'header.php'; ?>
<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2  text-primary font-secondary">Courses</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">All</li>
        </ul>
        <p class="text-lighten"></p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->
<style type="text/css">
.active-cyan-2 input.form-control[type=text]:focus:not([readonly]) {
  border-bottom: 1px solid #4dd0e1;
  box-shadow: 0 1px 0 0 #4dd0e1;
}
.active-cyan-2 input.form-control[type=text] {
  border-bottom: 1px solid #4dd0e1;
  box-shadow: 0 1px 0 0 #4dd0e1;
}
.active-cyan-2 .ti-search {
  color: #4dd0e1;
}
</style>
<section class="section-sm">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Our Courses</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
        </div>
      </div>
    </div>
    <!-- course list -->
    <div class="row" id="myItems">
        <div class="col-md-8 offset-md-2 mb-3">
           <!-- Search form -->
            <form class="form-inline d-flex justify-content-center md-form form-sm active-cyan active-cyan-2 mt-2">
              <i class="ti-search" aria-hidden="true"></i>
              <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search Course"
                aria-label="Search" id="myFilter" onkeyup="myFunction()">
            </form>
        </div>
  <!-- course item --> 
          <?php 
          $sql = "SELECT * FROM quiz ORDER BY title";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();          
          while($course = $stmt->fetch(PDO::FETCH_ASSOC)){
            $course_title=$course['title'];
            $course_date=$course['date'];
            $course_des=$course['intro'];
            $course_que=$course['total'];
            $course_time=$course['time'];
            $price=$course['price'];
            ?>
            <div class="col-lg-4 col-sm-6 col-md-4 col-xs-6 course-item mb-2">
                <div class="card border-primary hover-shadow">
                    <h4 class="card-header course-title"><?php echo $course_title; ?></h4>
                    <div class="card-body">
                    <ul class="list-group">
                    <li class="list-group-item list-group-item-primary course-code"><?php echo $course_des; ?></li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                        <i class="ti-list mr-1"> Total Questions</i>
                        <span class="badge badge-primary badge-pill"><?php echo $course_que; ?></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                        <i class="ti-time mr-1"> Time Allowed</i>
                        <span class="badge badge-primary badge-pill"><?php echo $course_time; ?>mins</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                        <i class="ti-credit-card mr-1"> price</i> 
                        <?php if($price =='free'): ?>
                        <span class="badge badge-primary badge-pill"><?php echo $price; ?></span>
                        <?php else: ?>
                        <span class="badge badge-primary badge-pill">&#8358;<?php echo $price; ?></span>
                        <?php endif; ?>
                        </li>
                    </ul>
                    </div>
                    </div>
                </div>
                <?php   }

                 ?>
<!-- /course list -->
    </div>
</div>
</section>
<!-- /courses -->
<?php include 'footer.php'; ?>