<?php 
include 'header.php';
if(!isset($_COOKIE['_ua_'])) {
    header("Location: index.php");
    die();
  }else{
    $_SESSION['key']='balex08085744967';
    $_SESSION['admin_email']='admin@educare.com';
  }
?>
    <div class="wrapper d-flex align-items-stretch">
      <nav id="sidebar">
        <div class="p-4 pt-3">
          <a class="d-inline-block p-2 text-color" href="#"><i class="ti-user" style="font-size:40px"></i> <br>
            Hello, Admin
          </a>
          <ul class="list-unstyled components mb-5">
                  <li class="side-menu-link <?php if(@$_GET['q']=='') echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php"><i class="ti-star"></i> 
                  Main</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==1) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=1"><i class="ti-book"></i> 
                  Manage Users</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==2) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=2"><i class="ti-star"></i> 
                  Leaderboard</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==6) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=6"><i class="ti-list"></i> 
                  History</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==4) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=4"><i class="ti-write"></i> 
                  Add Quiz</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==55) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=55"><i class="ti-download"></i> 
                  Add Question</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==50) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=50"><i class="ti-wallet"></i> 
                  Manage Questions</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==3) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=3"><i class="ti-help"></i> 
                  Feedbacks</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==8) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=8"><i class="ti-power-off"></i> 
                  Add Event</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==9) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=9"><i class="ti-power-off"></i> 
                  Manage Events</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==10) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=10"><i class="ti-bag"></i> 
                  upload material</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==11) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=11"><i class="ti-bag"></i> 
                  Manage materials</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==12) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=12"><i class="ti-bag"></i> 
                  Manage posts</a>
                  </li>
                  <li class="side-menu-link <?php if(@$_GET['q']==13) echo 'active'; ?>">
                  <a class="d-inline-block p-2 text-color" href="admin_dashboard.php?q=13"><i class="ti-bag"></i> 
                  Logout</a>
                  </li>
          </ul>
        </div>
      </nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">

            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="ti-menu"></i>
              <span class="sr-only">Toggle Menu</span>
            </button>
            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="ti-menu"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto" style="background-color: white;">
                <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="callto:+2348085744967"><i class="ti-mobile"></i></a></li>
                <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.facebook.com/EDU-CARE-104065777798697"><i class="ti-facebook"></i></a></li>
                <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://twitter.com/EducareC"><i class="ti-twitter-alt"></i></a></li>
                <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.instagram.com/educarecenter/"><i class="ti-instagram"></i></a></li>
               <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.youtube.com/channel/UC2JIRRiCfY2wpno5jqhWvqA"><i class="ti-youtube"></i></a></li>
                <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="mailto:educarecenter01@gmail.com"><i class="ti-email"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="row mt-2 text-center">
           <div class="col">
            <!-- home start -->
            <?php require_once 'home.php'; ?>
            <!-- home end -->

            <!-- feedback start -->
            <?php require_once 'feedback.php'; ?>
            <!-- feedback end -->

            <!-- history start -->
            <?php require_once 'history.php'; ?>
            <!-- history end -->
            <!-- ranking start -->
            <?php require_once 'ranking.php'; ?>
            <!-- ranking end -->
      
            <!--  quiz start -->
            <?php require_once 'quiz.php'; ?>
            <!-- quiz end -->
            <!-- Add quiz start -->
            <?php require_once 'add-quiz.php'; ?>
            <!-- Add quiz end -->
            <!-- users start -->
            <?php require_once 'users.php'; ?>         
            <!-- users end -->
            <!-- event start -->
            <?php require_once 'event.php'; ?>
            <!-- event end -->
            <!-- upload start -->
            <?php require_once 'fileupload.php'; ?>
            <!-- upload end -->

            <!-- manage question start-->
            <?php require_once 'manage-question.php'; ?>     
            <!-- manage question end -->

            <!-- logout start -->
            <?php require_once 'logout.php'; ?>     
            <!-- logout end -->
            <?php mysqli_close($conn); ?>
            </div>
          </div>
      </div>
    </div>

<?php include 'footer.php'; ?>
