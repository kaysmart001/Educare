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
    <div class="row">
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
            <div class="col-sm-6 col-md-4 mb-2">
                <div class="card border-primary hover-shadow">
                    <div class="card-header">
                        <h4 class="card-title"><?php echo $course_title; ?></h4>
                    </div>
                    <div class="card-body">
                    <ul class="list-group">
                    <li class="list-group-item list-group-item-primary"><?php echo $course_des; ?></li>
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