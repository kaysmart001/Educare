<?php include 'header.php'; ?>
<!-- hero slider -->
<section class="hero-section overlay bg-cover" data-background="assets/images/banner/banner-1.jpg">
  <div class="container">
    <div class="hero-slider">
      <!-- slider item -->
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
            <h1 class="text-white" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">Prepare for your CBT examinations</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".4">Register and have access to take CBT questions <br>solved by scholars from various departments </p>
            <a href="register.php" class="btn btn-primary" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".7">Register</a>
          </div>
        </div>
      </div>
      <!-- slider item -->
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
            <h1 class="text-white" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">5, 4, 3, 2 or 1?</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".4">Be in  "GOOD STANDING" before exam day. Our test/quiz contain <br>  past questions 
            and possible questions expected to come out <br>  during your examinations.</p>
            <a href="courses.php" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".7">View Available courses</a>
          </div>
        </div>
      </div>
      <!-- slider item -->
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
            <h1 class="text-white" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">Your bright future is our mission</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".4">Equip yourself with the right information</p>
            <a href="blog/index.php" class="btn btn-primary" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".7">Visit our blog</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /hero slider -->

<!-- banner-feature -->
<section class="bg-gray">
  <div class="container-fluid p-0">
    <div class="row no-gutters">
      <div class="col-xl-4 col-lg-5 align-self-end">
        <img class="img-fluid w-100" src="assets/images/banner/banner-feature.jpg" alt="banner-feature">
      </div>
      <div class="col-xl-8 col-lg-7">
        <div class="row feature-blocks bg-gray justify-content-between">
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-blackboard mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Practise CBT Question</h3>
            <p>Register and have access to take CBT questions solved by scholars from various departments</p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-agenda mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Study Material</h3>
            <p>Free study material available in downloadable formats.</p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-write mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Missing item</h3>
            <p>Report/Claim missing items. Be a helping hand to someone today.</p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-book mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Blogs</h3>
            <p>Sign up to be a writer with us. </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /banner-feature -->

<!-- about us -->
<section class="section">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6 order-2 order-md-1">
        <h2 class="section-title">About Educare</h2>
        <p>Educare is a web-based application with a goal to help students of our world-class university 
        excel in their Computer-Based Test examinations. The application also caters for students 
        to have access to study material and resources in downloadable formats. 
        Also, have an amazing feature to help students report and claim missing item.</p>
        <a href="about.php" class="btn btn-primary-outline">Learn more</a>
      </div>
      <div class="col-md-6 order-1 order-md-2 mb-4 mb-md-0">
        <img class="img-fluid w-100" src="assets/images/about/about-us.jpg" alt="about image">
      </div>
    </div>
  </div>
</section>
<!-- /about us -->
<!-- stats -->
<?php 
$q1 = "SELECT sum(total) AS total_questions FROM quiz";
$q2 = "SELECT count(*) AS total_students FROM users";
$q3 = "SELECT count(*) AS total_courses FROM quiz";
$q4 = "SELECT sum(time) AS total_mins FROM quiz";
$stmt1 = $pdo->prepare($q1);
          $stmt1->execute();
          $questions = $stmt1->fetch(PDO::FETCH_ASSOC);
          $total_questions=$questions['total_questions'];
$stmt2 = $pdo->prepare($q2);
          $stmt2->execute();
          $users = $stmt2->fetch(PDO::FETCH_ASSOC);
          $total_students=$users['total_students'];
$stmt3 = $pdo->prepare($q3);
          $stmt3->execute();
          $courses = $stmt3->fetch(PDO::FETCH_ASSOC);
          $total_courses=$courses['total_courses'];
$stmt4 = $pdo->prepare($q4);
          $stmt4->execute();
          $mins = $stmt4->fetch(PDO::FETCH_ASSOC);
          $total_mins=$mins['total_mins'];
?>
<section class="section-sm bg-primary">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" data-count="<?php echo $total_questions;?>">0</h2>
          <h5 class="text-white">QUESTIONS</h5>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" data-count="<?php echo $total_courses;?>">0</h2>
          <h5 class="text-white">COURSES</h5>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" data-count="<?php echo $total_mins;?>">0</h2>
          <h5 class="text-white">MINUTES</h5>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" data-count="<?php echo $total_students;?>">0</h2>
          <h5 class="text-white">STUDENTS</h5>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- stats -->

<!-- courses -->
<section class="section-sm">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Our Courses</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          <div>
            <a href="courses.php" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
          </div>
        </div>
      </div>
    </div>
    <!-- course list -->
<div class="row justify-content-center">
  <!-- course item --> 
 <?php 
$sql = "SELECT * FROM quiz ORDER BY date DESC LIMIT 3";
$stmt = $pdo->prepare($sql);
          $stmt->execute();          
          while($course = $stmt->fetch(PDO::FETCH_ASSOC)){
            $course_title=$course['title'];
            $course_date=$course['date'];
            $course_des=$course['intro'];
            ?>
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <!-- <img class="card-img-top rounded-0" src="images/courses/course-1.jpg" alt="course thumb"> -->
      <div class="card-body">
        <ul class="list-inline mb-2">
          <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i><?php echo $course_date;?></li>
          <!-- <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li> -->
        </ul>
        <a href="#">
          <h4 class="card-title"><?php echo $course_title; ?></h4>
        </a>
        <p class="card-text mb-4"><?php echo $course_des; ?></p>
        <!-- <a href="course-single.html" class="btn btn-primary btn-sm">Apply now</a> -->
      </div>
    </div>
  </div>



       <?php   }

   ?>
</div>
<!-- /course list -->
    <!-- mobile see all button -->
    <div class="row">
      <div class="col-12 text-center">
        <a href="courses.php" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
      </div>
    </div>
  </div>
</section>
<!-- /courses -->

<!-- success story -->
<section class="section bg-cover" data-background="assets/images/backgrounds/success-story.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-sm-4 position-relative success-video">
        <a class="play-btn venobox" href="https://youtu.be/nA1Aqp0sPQo" data-vbtype="video">
          <i class="ti-control-play"></i>
        </a>
      </div>
      <div class="col-lg-6 col-sm-8">
        <div class="bg-white p-5">
          <h2 class="section-title">Our Story</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /success story -->

<!-- events -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Upcoming Events</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          <div>
            <a href="events.php" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
  <!-- event -->
<?php 
$sql2 = "SELECT * FROM events ORDER BY start_date limit 3";
$stmt = $pdo->prepare($sql2);
          $stmt->execute();          
          while($event = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $event_start_date = $event['start_date'];
            $event_finish_date = $event['finish_date'];
            $event_venue = $event['venue'];
            $event_description = $event['description'];
            $date = date_create($event_start_date);
            
?>
  <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card border-0 rounded-0 hover-shadow">
      <div class="card-img position-relative">
        <img class="card-img-top rounded-0" src="assets/images/events/event-1.jpg" alt="event thumb">
        <div class="card-date"><span><?php echo date_format($date, 'd'); ?></span><br><?php echo date_format($date, 'F'); ?></div>
      </div>
      <div class="card-body">
        <!-- location -->
        <p><i class="ti-location-pin text-primary mr-2"></i><?php echo $event_venue; ?></p>
        <a href="#"><h4 class="card-title"><?php echo $event_description; ?></h4></a>
      </div>
    </div>
  </div>
<?php } ?>
    <!-- mobile see all button -->
    <div class="row">
      <div class="col-12 text-center">
        <a href="events.php" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
      </div>
    </div>
  </div>
</div>
</section>
<!-- /events -->

<!-- blog -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Latest Posts</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          <div>
            <a href="blog/index.php" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
  
<?php 
$status="Published";
$sql = "SELECT * FROM posts WHERE post_status = :status ORDER BY post_id DESC LIMIT 3";
$stmt = $pdo->prepare($sql);
          $stmt->execute([
            ':status'=>$status
          ]);          
          while($post = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $post_id = $post['post_id'];
            $post_title = $post['post_title'];
            $post_des = substr($post['post_des'], 0, 150);
            $post_image = $post['post_image'];
            $post_date = $post['post_date'];
            $post_author = $post['post_author']; ?>
<!-- blog post -->
  <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
      <img class="card-img-top rounded-0" src="blog/img/<?php echo $post_image; ?>" alt="Post thumb">
      <div class="card-body">
        <!-- post meta -->
        <ul class="list-inline mb-3">
          <!-- post date -->
          <li class="list-inline-item mr-3 ml-0"><?php echo $post_date; ?></li>
          <!-- author -->
          <li class="list-inline-item mr-3 ml-0"><?php echo $post_author; ?></li>
        </ul>
        <a href="blog-single.html">
          <h4 class="card-title"><?php echo $post_title; ?></h4>
        </a>
        <p class="card-text"><?php echo $post_des; ?></p>
        <a href="blog/single.php?id=<?php echo $post_id; ?>" class="btn btn-primary btn-sm">read more</a>
      </div>
    </div>
  </article>
        <?php  } ?>
<!-- mobile see all button -->
    <div class="row">
      <div class="col-12 text-center">
        <a href="blog/index.php" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
      </div>
    </div>
  </div>
</div>
</section>
<!-- /blog -->
<?php include 'footer.php'; ?>

