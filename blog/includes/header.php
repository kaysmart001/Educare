<?php ob_start(); ?>
<?php session_start(); ?>
<?php include_once '../dbConnection.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Educare Blog</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
	  <!-- themefy-icon -->
	  <link rel="stylesheet" href="../plugins/themify-icons/themify-icons.css">
	  <!-- animation css -->
	  <link rel="stylesheet" href="../plugins/animate/animate.css">
	  <!-- aos -->
	  <link rel="stylesheet" href="../plugins/aos/aos.css">
	  <!-- venobox popup -->
	  <link rel="stylesheet" href="../plugins/venobox/venobox.css">

	  <!-- Main Stylesheet -->
	<link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/styles.css">
	<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<header class="fixed-top header">
  <!-- top header -->
  <div class="top-header py-2 bg-white">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-lg-4 text-center text-lg-left">
          <a class="text-color mr-3" href="callto:+2348085744967"><strong>CALL</strong>+2348085744967</a>
          <ul class="list-inline d-inline">
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.facebook.com/EDU-CARE-104065777798697"><i class="ti-facebook"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://twitter.com/EducareC"><i class="ti-twitter-alt"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.youtube.com/channel/UC2JIRRiCfY2wpno5jqhWvqA"><i class="ti-youtube"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://www.instagram.com/educarecenter/"><i class="ti-instagram"></i></a>
            </li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="mailto:educarecenter01@gmail.com"><i class="ti-email"></i></a>
            </li>
          </ul>
        </div>
        <div class="col-lg-8 text-center text-lg-right">
          <ul class="list-inline">
            <!-- <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="notice.html">notice</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="research.html">research</a></li> -->
            <!-- <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="scholarship.html">SCHOLARSHIP</a></li> -->
            <?php if (isset($_SESSION['login']) && isset($_SESSION['fullname'])): ?>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="../user_dashboard.php">Dashboard</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="../signout.php">Logout</a></li>
            <?php else: ?>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="../login.php">login</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="../register.php">register</a></li>
          <?php endif; ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- navbar -->
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="../index.php"><img src="../images/educare01.png" alt="logo" id="logo"></a>
        <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
          aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav ml-auto text-center">
            <li class="nav-item @@events">
              <a class="nav-link" href="../index.php">HOME</a>
            </li>
            <li class="nav-item @@blog">
              <a class="nav-link" href="index.php">BLOG</a>
            </li>
            <li class="nav-item dropdown view">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Categories
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <?php 

            $sql = "SELECT * FROM categories";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            while($cat = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $cat_id = $cat['cat_id'];
                $cat_title = $cat['cat_title']; ?>
                <a class="dropdown-item" href="categories.php?id=<?php echo $cat_id; ?>"><?php echo $cat_title; ?></a>
            <?php }
    
            ?>  
              </div>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0" method="POST" action="search.php">
            <input name="val" class="form-control mr-sm-2" style="font-size: 14px; border-radius: 20px;" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    </div>
  </div>
</header>
<!-- /header -->
<!-- <div>
  <form class="form" method="POST" action="search.php">
      <input name="val" class="form-control" type="search" placeholder="Enter Search Keyword">
      <button class="btn btn-primary" type="submit" id="search">Search</button>
  </form>
</div> -->