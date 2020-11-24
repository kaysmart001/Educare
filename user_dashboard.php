<?php 
include 'header2.php';
$user=$_SESSION['fullname'];
$email=$_SESSION['email']; 
$phone=$_SESSION['phone'];
if(!isset($user) || !isset($email)) {
  header("Location: login.php");
}
?>
    <div class="wrapper d-flex align-items-stretch">
      <nav id="sidebar">
        <div class="p-4 pt-3">
          <a class="d-inline-block p-2 text-color" href=""><i class="ti-user" style="font-size:40px"></i> <br>
            Hi, <?php echo $user ?>
          </a>
          <ul class="list-unstyled components mb-5">
            <li class="side-menu-link <?php if(@$_GET['q']==9) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=9"><i class="ti-book"></i> 
            Premium Courses</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']=='free') echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=free"><i class="ti-book"></i> 
            Free Courses</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']=='purchased') echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=purchased"><i class="ti-book"></i> 
            My Courses</a>
            </li>
            <?php 
              $cart=mysqli_query($conn,"SELECT count(*)AS 'cart_total' FROM cart WHERE user_id='$email'");
              $cartfetch=mysqli_fetch_assoc($cart);
              $cart_total=$cartfetch['cart_total'];
             ?>
            <li class="side-menu-link <?php if(@$_GET['q']==31) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=cart"><i class="ti-shopping-cart-full"></i> 
            cart<span class="badge badge-pill badge-primary"><?php echo $cart_total; ?></span></a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==2) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=2"><i class="ti-list"></i> 
            History</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==3) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=3"><i class="ti-star"></i> 
            Leaderboard</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==10) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=10"><i class="ti-wallet"></i> 
            Wallet</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==4) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=4"><i class="ti-write"></i> 
            Create Post</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==5) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=5"><i class="ti-archive"></i> 
            Manage Posts</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==7) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=7"><i class="ti-download"></i> 
            Study materials</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']=='feed') echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=feed"><i class="ti-help"></i> 
            Feedback/Complaint</a>
            </li>
            <li class="side-menu-link <?php if(@$_GET['q']==8) echo 'active'; ?>">
            <a class="d-inline-block p-2 text-color" href="user_dashboard.php?q=8"><i class="ti-power-off"></i> 
            Log out</a>
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
            <!-- cart start -->
            <?php require_once 'cart.php'; ?>
            <!-- cart end -->

            <!-- feedback start -->
            <?php require_once 'feedback.php'; ?>
            <!-- feedback end -->

            <!-- history start -->
            <?php require_once 'history.php'; ?>
            <!-- history end -->
            <!-- ranking start -->
            <?php require_once 'ranking.php'; ?>
            <!-- ranking end -->
            <!-- test start -->
            <?php require_once 'test.php'; ?>   
            <!-- test end -->
            <!--  quiz start -->
            <?php require_once 'quiz.php'; ?>
            <!-- quiz end -->
            <!-- Available courses start -->
            <?php require_once 'Available-Courses.php'; ?>
            <!-- Available courses end -->
            <!-- users courses start -->
            <?php require_once 'Users-Courses.php'; ?>         
            <!-- users courses end -->
            <!-- wallet start -->
            <?php require_once 'wallet.php'; ?>
            <!-- wallet end -->
            <!-- download start -->
            <?php 
              if(@$_GET['q']==7){
                require_once 'downloads.php';
                }
            ?>
            <!-- download end -->

            <!-- post start -->
            <?php require_once 'Make-post.php'; ?>  
            <!-- post end -->

            <!-- add category start -->
            <?php require_once 'categories.php'; ?>     
            <!-- add category end -->

            <!-- manage post start-->
            <?php require_once 'Manage-post.php'; ?>     
            <!-- manage post end -->

            <!-- edit post start -->
            <?php require_once 'Edit-post.php'; ?>
            <!-- edit post end -->
            <!-- comment start -->
            <?php require_once 'comments.php'; ?>
            <!-- comment end -->

            <!-- logout start -->
            <?php require_once 'logout.php'; ?>     
            <!-- logout end -->
            <?php mysqli_close($conn); ?>
            </div>
          </div>
      </div>
    </div>
  <?php include 'footer2.php'; ?> 
