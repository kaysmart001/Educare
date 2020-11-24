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
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
	  <!-- themefy-icon -->
	  <link rel="stylesheet" href="../assets/plugins/themify-icons/themify-icons.css">

  <!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/styles.css">

  <!--Favicon-->
  <link rel="shortcut icon" href="../assets/images/educare-icon.ico" type="image/x-icon">
  <link rel="icon" href="../assets/images/educare-icon.ico" type="image/x-icon">
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="../index.php">
    <img src="../assets/images/educare-logo.png" alt="Educare logo" id="logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Blog <span class="sr-only">(current)</span></a>
      </li>
      <?php if (isset($_SESSION['login']) && isset($_SESSION['fullname'])): ?>
            <li class="nav-item">
              <a class="nav-link" href="../user_dashboard.php">Dashboard</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../signout.php">Logout</a>
            </li>
            <?php else: ?>
            <li class="nav-item">
              <a class="nav-link" href="../login.php">login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../register.php">register</a>
            </li>
          <?php endif; ?>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="val">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</div>