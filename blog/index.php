<?php require_once('header.php'); ?>
<!-- /page title -->
      <?php
        $post_per_page = 6;
        $status = "Published";
        $sql = "SELECT * FROM posts WHERE status = :status";
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
          $sql = "SELECT * FROM posts WHERE status = :status ORDER BY id DESC LIMIT $page_id, $post_per_page";
          $stmt = $pdo->prepare($sql);
          $stmt->execute([
            ':status'=>$status
          ]);          
          while($post = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $post_id = $post['id'];
            $post_title =html_entity_decode($post['title'],ENT_QUOTES);
            $post_des = html_entity_decode(substr($post['body'], 0, 250),ENT_QUOTES);
            $post_image = $post['cover'];
            $created_at = $post['created_at'];
            $updated_at = $post['updated_at'];
            $post_author = $post['author'];
            $post_cat_id = $post['category_id'];
            $post_status = $post['status']; ?>
            <div class="col-md-4 mb-5">
              <div class="card text-center">
                <img src="img/<?php echo $post_image; ?>" alt="Image" class="card-img-top">
                <div class="card-header">
                  <h4 class="posted"><a href="categories.php?id=<?php echo $post_cat_id; ?>" class="category">
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
                </h4>
                </div>
                <div class="card-body">
                  <h5 class="card-title"><a href="single.php?id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></h5>
                  <p class="card-text"><?php echo $post_des; ?></p>
                  <a href="single.php?id=<?php echo $post_id; ?>" class="btn btn-primary">Read more &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                   Author: <?php echo $post_author; ?> <br>
                   Date posted: <?php echo $created_at; ?> <br>
                   Last updated: <?php echo $updated_at; ?>
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
<?php require_once("footer.php"); ?>