<?php if (@$_GET['q']==5): ?>
    <?php 
      if (@$_GET['message']=='success') {
        echo "<script>mcxDialog.toast('your post was published successfully',3);</script>";
      }
      if (@$_GET['message']=='updated') {
        echo "<script>mcxDialog.toast('your post was updated successfully',3);</script>";
      }
     ?>
  <div class="d-flex flex-row justify-content-between">
      <h2 class="my-3">My Posts</h2>
      <a class="btn btn-primary align-self-center d-block rounded" href="user_dashboard.php?q=4">Add New Post</a>
  </div>
  <div class="table-responsive">
  <table class="table table-bordered table-striped" id="posts" width="100%" cellspacing="0">
      <thead class="thead-dark">
          <tr>
          <th>S/N</th>
          <th>Category</th>
          <th>Title</th>
          <th>Status</th>
          <th>Created_at</th>
          <th>Updated_at</th>
          <th>Edit</th>
          <th>Delete</th>
          <th>Comments</th>
          </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM posts WHERE author='$user' ORDER BY id DESC";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();
          $count = $stmt->rowCount();
          $counter=1;
          if($count > 0)
          {
            while($post = $stmt->fetch(PDO::FETCH_ASSOC)){
              $post_id = $post['id'];
              $post_title = $post['title'];
              $post_cat_id = $post['category_id'];
              $post_status = $post['status'];
              $created_at= $post['created_at'];
              $updated_at= $post['updated_at'];
        ?>
              <tr>
                  <td><?php echo $counter++; ?></td>
                  <td>
                  <?php 
                    $sql1 = "SELECT * FROM categories WHERE cat_id = :id";
                    $stmt1 = $pdo->prepare($sql1);
                    $stmt1->execute([':id'=>$post_cat_id]);
                    while($cat = $stmt1->fetch(PDO::FETCH_ASSOC)) {
                      $cat_title = $cat['cat_title'];
                    }
                      echo $cat_title;
                  ?>
                  </td>
                  <td><?php echo $post_title; ?></td>
                  <td><?php echo $post_status; ?></td>
                  <td><?php echo $created_at; ?></td>
                  <td><?php echo $updated_at; ?></td>
                  <td>
                      <form action="user_dashboard.php?q=edit-post" method="POST">
                          <input type="hidden" value="<?php echo $post_id; ?>" name="val"/>
                          <button type="submit" name="edit-post">
                            <i class="ti-pencil"></i>
                          </button>
                      </form>
                  </td>
                  <td>
                      <form action="user_dashboard.php?q=5" method="POST">
                          <input type="hidden" value="<?php echo $post_id; ?>" name="val"/>
                          <button type="submit" name="delete-post">
                            <i class="ti-trash" style="color: red;"></i> 
                          </button>
                      </form>               
                  </td>
                  <td>
                      <form action="user_dashboard.php?q=view-comments" method="POST">
                          <input type="hidden" value="<?php echo $post_id; ?>" name="val"/>
                          <button type="submit" name="view-comments">
                            <i class="ti-eye" style="color: blue;"></i> 
                          </button>
                      </form>               
                  </td>
                </tr>
      <?php 
                }
             }  
          
      ?>  
      </tbody>
  </table>
  </div>
  <?php 
          if(isset($_POST['delete-post'])) {
            $pid = $_POST['val'];
            $sql3 = "DELETE FROM posts WHERE id = :pid";
            $stmt= $pdo->prepare($sql3);
            $stmt->execute([
              ':pid'=>$pid
            ]);
            // $sql4 = "DELETE FROM comments WHERE comment_post_id = :pid";
            // $stmt= $pdo->prepare($sql4);
            // $stmt->execute([
            //   ':pid'=>$pid
            // ]);
            header("Location: user_dashboard.php?q=5");
          }
        ?>
<?php endif; ?>