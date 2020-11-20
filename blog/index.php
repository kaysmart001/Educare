<?php require_once('./includes/header.php'); ?>

<section class="page-title-section overlay" data-background="../images/banner/banner-1.jpg" style="padding: 100px 0 80px">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.php">Blog </a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">All Posts</li>
        </ul>
        <p class="text-lighten"></p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->
      <?php
        $post_per_page = 6;
        $status = "Published";
        $sql = "SELECT * FROM posts WHERE post_status = :status";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
          ':status' => $status
        ]);
        $post_count = $stmt->rowCount();
        if(isset($_GET['page'])) {
          $page = $_GET['page'];
          if($page == 1) {
            $page_id = 0;
          } else {
            $page_id = ($post_per_page * $page) - $post_per_page;
          }
        } else {
          $page_id = 0;
          $page = 1;
        }
        $total_pager = ceil($post_count/$post_per_page);
      ?>
<section class="section">
  <div class="container">
    <div class="row align-items-center">
        <?php 
          $status = 'Published';
          $sql = "SELECT * FROM posts WHERE post_status = :status ORDER BY post_id DESC LIMIT $page_id, $post_per_page";
          $stmt = $pdo->prepare($sql);
          $stmt->execute([
            ':status'=>$status
          ]);          
          while($post = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $post_id = $post['post_id'];
            $post_title = $post['post_title'];
            $post_des = substr($post['post_des'], 0, 200);
            $post_image = $post['post_image'];
            $post_date = $post['post_date'];
            $post_author = $post['post_author'];
            $post_cat_id = $post['post_cat_id'];
            $post_status = $post['post_status']; ?>
            <div class="col-md-4 mb-5">
              <div class="card text-center">
                <img src="./img/<?php echo $post_image; ?>" alt="Image" class="card-img-top">
                <div class="card-header">
                  <span class="posted"><a href="categories.php?id=<?php echo $post_cat_id; ?>" class="category">
                  <?php 
                    $sql1 = "SELECT * FROM categories WHERE cat_id = :id";
                    $stmt1 = $pdo->prepare($sql1);
                    $stmt1->execute([':id'=>$post_cat_id]);
                    while($cat = $stmt1->fetch(PDO::FETCH_ASSOC)) {
                      $cat_title = $cat['cat_title'];
                    }
                    echo $cat_title;
                  ?>
                </a>
                </span>
                </div>
                <div class="card-body">
                  <h5 class="card-title"><a href="single.php?id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></h5>
                  <p class="card-text"><?php echo $post_des; ?></p>
                  <a href="single.php?id=<?php echo $post_id; ?>" class="btn btn-primary">Read more &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                   Posted by <?php echo $post_author; ?> on <?php echo $post_date; ?>
                </div>
              </div>
            </div>
              <?php }
        ?>
    </div>
      <?php
        if($post_count > $post_per_page) { ?>

          <ul class="pagination px-5">
            <?php
            if(isset($_GET['page'])) {
              $prev = $_GET['page'] - 1;
            } else {
              $prev = 0;
            }
              if($prev+1 <= 1) {
                echo '<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a></li>';
              } else {
                echo '<li class="page-item"><a class="page-link" href="index.php?page='. $prev .'" tabindex="-1">Previous</a></li>';
              }
            ?>
            <?php 
            if(isset($_GET['page'])) {
              $active = $_GET['page'];
            } else {
              $active = 1;
            }
              for($i=1; $i<=$total_pager; $i++) {
                if($i == $active) {
                  echo '<li class="page-item active"><a class="page-link" href="index.php?page='. $i .'">'. $i .'</a></li>';
                } else {
                  echo '<li class="page-item"><a class="page-link" href="index.php?page='. $i .'">'. $i .'</a></li>';
                }
              }              
            ?>
            <?php
              if(isset($_GET['page'])) {
                  $next = $_GET['page'] + 1;
                
              } else {
                $next = 2;
              }
              if($next-1 >= $total_pager) {
                echo '<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>';
              } else {
                echo '<li class="page-item"><a class="page-link" href="index.php?page='. $next .'">Next</a></li>';
              }
            ?>
            
          </ul>

        <?php }
      ?>
      
 </div>
</section>
<?php require_once("./includes/footer.php"); ?>