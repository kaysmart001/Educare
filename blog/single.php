<?php require_once('./includes/header.php'); ?>
<section class="page-title-section overlay" data-background="../images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.php">Blog</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Post Details</li>
        </ul>
        <p class="text-lighten"></p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->
<?php    
  if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM posts WHERE post_id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':id'=>$id]);
    $count = $stmt->rowCount();
      if($count == 1){
          $post = $stmt->fetch(PDO::FETCH_ASSOC);
          $post_title = $post['post_title'];
          $post_des = $post['post_des'];
          $post_image = $post['post_image'];
          $post_cat_id = $post['post_cat_id'];
          $post_date = $post['post_date'];
          $post_author = $post['post_author'];
          $sql1 = "SELECT * FROM categories WHERE cat_id = :cat_id";
          $stmt1 = $pdo->prepare($sql1);
          $stmt1->execute([':cat_id'=>$post_cat_id]);
          $cat = $stmt1->fetch(PDO::FETCH_ASSOC);
          $cat_title = $cat['cat_title']; 
?>
      
   <!-- blog details -->
<section class="section-sm bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-12 mb-4">
        <img src="./img/<?php echo $post_image; ?>" alt="<?php echo $post_title; ?>" class="img-fluid w-100">
      </div>
      <div class="col-12">
        <ul class="list-inline">
          <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><span class="font-weight-bold mr-2">Posted By:</span><?php echo $post_author;?></li>
          <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><span class="font-weight-bold mr-2">Date posted:</span><?php echo $post_date; ?></li>
          <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><span class="font-weight-bold mr-2">Category:</span><?php echo $cat_title; ?></li>
          <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><i class="ti-book mr-2"></i>Read 289</li>
          <!-- <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><i class="ti-share mr-2"></i>289</li> -->
          <li class="list-inline-item mr-4 mb-3 mb-md-0 text-light"><a class="text-light" href="#"><i class="ti-comments mr-2"></i>265</a></li>
        </ul>
      </div>
      <!-- blog content -->
      <div class="col-12 mb-5">
        <h2 class="text-center"><?php echo $post_title; ?></h2>
        <p><?php echo $post_des; ?></p>
      </div>
      <!-- comment box -->
      <div id="showComments"></div>    
      <div class="col-12 mt-4">
          <?php if (isset($_SESSION['fullname'])): ?>
            <form class="row" method="POST" id="commentForm">
              <div class="col-12">
                <input type="hidden" name="name" id="name" class="form-control" value="<?php echo $_SESSION['fullname']?>" required />
              </div>
              <div class="col-12">
                <textarea name="comment" id="comment" class="form-control mb-4" placeholder="Comment Here..." required></textarea>
              </div>
              <span id="message"></span>
              <div class="col-12">
                <input type="hidden" name="commentId" id="commentId" value="0" />
                <button type="submit" class="btn btn-primary"  name="submit" id="submit">post comment</button>
              </div>
            </form>
            <script type="text/javascript">
              showComments();
              $('#commentForm').on('submit', function(event){
                event.preventDefault();
                var formData = $(this).serialize();
                $.ajax({
                  url: "comments.php",
                  method: "POST",
                  data: formData,
                  dataType: "JSON",
                  success:function(response) {
                    if(!response.error) {
                      $('#commentForm')[0].reset();
                      $('#commentId').val('0');
                      $('#message').html(response.message);
                      showComments();
                    } else if(response.error){
                      $('#message').html(response.message);
                    }
                  }
                })
              }); 
              $(document).on('click', '.reply', function(){
                var commentId = $(this).attr("id");
                $('#commentId').val(commentId);
                $('#name').focus();
              });
              // function to show comments
              function showComments() {
                $.ajax({
                  url:"show_comments.php",
                  method:"POST",
                  success:function(response) {
                    $('#showComments').html(response);
                  }
                })
              }

            </script>
        <?php endif; ?>
      </div>
    </div>
  </div> 
</section>
<!-- /blog details -->
<?php 
    }else{
      echo "<div class='alert alert-danger text-center'><h2>No post found!</h2></div>";
    }
  } 
?>

<?php require_once('./includes/footer.php'); ?>