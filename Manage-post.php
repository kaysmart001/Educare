<?php if (@$_GET['q']==5): ?>
  <div class="d-flex flex-row justify-content-between">
      <h2 class="my-3">All Posts</h2>
      <a class="btn btn-primary align-self-center d-block rounded" href="user_dashboard.php?q=4">Add New Post</a>
  </div>
  <div class="table-responsive">
  <table class="table">
      <thead class="thead-dark">
          <tr>
          <th scope="col">S/N</th>
          <th scope="col">Post Title</th>
          <th scope="col">Post Category</th>
          <th scope="col">Post Status</th>
          <th scope="col">Post Date</th>
          <th scope="col">Comments</th>
          <th scope="col" colspan="2">Action</th>
          </tr>
      </thead>
      <tbody>
        <?php
          $sql = "SELECT * FROM posts WHERE post_author='$user' ORDER BY post_id DESC";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();
          $count = $stmt->rowCount();
          $counter=1;
          if($count == 0) {
            echo "No posts found!";
          } else {
            while($post = $stmt->fetch(PDO::FETCH_ASSOC)) {
              $post_id = $post['post_id'];
              $post_title = $post['post_title'];
              $post_cat_id = $post['post_cat_id'];
              $post_status = $post['post_status'];
              $post_date= $post['post_date'];
              $post_comment = $post['post_comment']; ?>
              <tr>
                  <td><?php echo $counter++; ?></td>
                  <td><?php echo $post_title; ?></td>
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
                  <td><?php echo $post_status; ?></td>
                  <td><?php echo $post_date; ?></td>
                  <td>
                    <a class="badge badge-primary" href="user_dashboard.php?q=comment&id=<?php echo $post_id; ?>"><i class="ti-comments" style="color: white; font-size: 30px;"></i><?php echo $post_comment;  ?></a>
                  </td>
                  <td>
                      <form action="user_dashboard.php?q=editpost" method="POST">
                          <input type="hidden" value="<?php echo $post_id; ?>" name="val"/>
                          <button type="submit" name="edit-post">
                            <i class="ti-pencil" style="color: grey; font-size: 30px;"></i>
                          </button>
                      </form>
                  </td>
                  <td>
                      <form action="user_dashboard.php?q=5" method="POST">
                          <input type="hidden" value="<?php echo $post_id; ?>" name="val"/>
                          <button type="submit" name="delete-post">
                            <i class="ti-trash" style="color: red; font-size: 30px;"></i> 
                          </button>
                      </form>               
                  </td>
                </tr>
            <?php }
          }
          
        ?>
        
        <?php 
          if(isset($_POST['delete-post'])) {
            $pid = $_POST['val'];
            $sql3 = "DELETE FROM posts WHERE post_id = :pid";
            $stmt= $pdo->prepare($sql3);
            $stmt->execute([
              ':pid'=>$pid
            ]);
            $sql4 = "DELETE FROM comments WHERE comment_post_id = :pid";
            $stmt= $pdo->prepare($sql4);
            $stmt->execute([
              ':pid'=>$pid
            ]);
            header("Location: user_dashboard.php?q=5");
          }
        ?>
          
      </tbody>
  </table>
  </div>
<?php endif; ?>