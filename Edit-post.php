<?php if(@$_GET['action']=='update'){
  if(isset($_POST['update-post'])) {
      $post_title = htmlentities($_POST['post-title'],ENT_QUOTES); 
      $post_cat_id = $_POST['cat-id'];
      $post_status = $_POST['post-status'];
      $post_content = htmlentities($_POST['post-content'],ENT_QUOTES);
      $postid = $_POST['edit-post-id'];
      $post_updated_date= date('j F Y');
      if ($_FILES['post-image']['name']=='') 
      {
        $sql3 = "SELECT * FROM posts WHERE id = :id";
          $stmt3 = $pdo->prepare($sql3);
          $stmt3->execute([
              ':id' => $postid
          ]);
          while($p = $stmt3->fetch(PDO::FETCH_ASSOC)) {
              $post_image = $p['cover'];
          }
      }
      else
        {
          $ext=end(explode('.', $_FILES['post-image']['name']));
          $imagename=explode('.', $_FILES['post-image']['name'])[0];
          $post_image = uniqid().$imagename.'.'.$ext;
          $post_temp_image = $_FILES['post-image']['tmp_name'];
          move_uploaded_file("{$post_temp_image}", "blog/img/{$post_image}");
        }
     
      if(empty($post_title) || empty($post_cat_id) || empty($post_status) || empty($post_content)) 
      {
          echo "<script>mcxDialog.alert('All fields must be filled!');</script>";
      } 
      else 
      {
          $sql = "UPDATE posts SET title = :title, body = :post, cover = :image, updated_at = :date, category_id = :catid, status = :status WHERE id = :postid";
          $stmt = $pdo->prepare($sql);
          $stmt->execute([
              ':title'=>$post_title,
              ':post'=>$post_content,
              ':image'=>$post_image,
              ':date'=>$post_updated_date,
              ':catid'=>$post_cat_id,
              ':status'=>$post_status,
              ':postid'=>$postid
          ]);
          header("Location: user_dashboard.php?q=5&message=updated");
      }
  }
} 

?>
<?php if(@$_GET['q']=='edit-post'): ?>
  <?php 
  if(isset($_POST['val'])) {
      $pid = $_POST['val'];
      $sql = "SELECT * FROM posts WHERE id = :pid";
      $stmt = $pdo->prepare($sql);
      $stmt->execute([
          ':pid'=>$pid
      ]);
      while($post = $stmt->fetch(PDO::FETCH_ASSOC)) {
          $post_id = $post['id'];
          $post_title = $post['title'];
          $post_cat_id = $post['category_id'];
          $post_status = $post['status'];
          $post_image = $post['cover'];
          $post_content = $post['body'];
      }
  }
  ?>
  <form method="POST" action="user_dashboard.php?q=edit-post&action=update" enctype="multipart/form-data">
      <div class="form-group">
          <input type="hidden" value="<?php echo $post_id; ?>" name="edit-post-id" />
          <label for="post-title">Post Title</label>
          <input name="post-title" value="<?php echo $post_title; ?>" type="text" class="form-control" id="post-title" placeholder="Enter post title">
      </div>
      <div class="form-group">
          <label for="category">Select Category</label>
          <select name="cat-id" class="form-control" id="category">
          <?php
                  $sql1 = 'SELECT * FROM categories';
                  $stmt1 = $pdo->prepare($sql1);
                  $stmt1->execute();
                  while($category = $stmt1->fetch(PDO::FETCH_ASSOC)) {
                      $cat_id = $category['cat_id'];
                      $cat_title = $category['cat_title']; ?>
                      echo "<option value="<?php echo $cat_id; ?>" <?php echo $cat_id == $post_cat_id?'selected':'' ?>><?php echo $cat_title; ?></option>";
                  <?php }
              ?>
          </select>
      </div>
      <div class="form-group">
          <label for="category">Post Status</label>
          <select name="post-status" class="form-control" id="category">
              <option <?php echo $post_status == 'Published'?'selected':'' ?>>Published</option>
              <option <?php echo $post_status == 'Draft'?'selected':'' ?>>Draft</option>
          </select>
      </div>
      <div class="form-group">
          <img src="blog/img/<?php echo $post_image; ?>" style="width:100px;height:100px" />
          <label for="post-image">Upload post image</label>
          <input name="post-image" type="file" class="form-control-file" id="post-image">
      </div>
      <div class="form-group">
          <label for="post-content">Post Content</label>
          <textarea name="post-content" class="form-control" id="post-content" rows="10" placeholder="Your post content"><?php echo $post_content; ?></textarea>
      </div>
      <input name="update-post" type="submit" class="btn btn-primary rounded" value="Update post">
  </form>
<?php endif; ?>