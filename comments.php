<?php if (@$_GET['q']=='comment'): ?>
  <div>
      <h2 class="my-3">All Comments</h2>
  </div>
  <div class="table-responsive">
  <table class="table">
      <thead class="thead-dark">
          <tr>
          <th scope="col">S/N</th>
          <th scope="col">User name</th>
          <th scope="col">Comment</th>
          <th scope="col">In response to</th>
          <th scope="col">Action</th>
          </tr>
      </thead>
      <tbody>
      <?php
        $sql = "SELECT * FROM comments WHERE comment_post_id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
          ':id' => $_GET['id']
        ]);
        $count = $stmt->rowCount();
        $counter=1;
        if($count == 0) {
          echo "No comments";
          exit;
        }
        while($com = $stmt->fetch(PDO::FETCH_ASSOC)) {
          $c_id = $com['comment_id'];
          $c_content = $com['comment_des'];
          $c_author = $com['comment_author']; ?>
            <tr>
                <td><?php echo $counter++; ?></td>
                <td><?php echo $c_author; ?></td>
                <td><?php echo $c_content; ?></td>
                <td>
                    <a href="blog/single.php?id=<?php echo $_GET['id']; ?>" class="btn-link">
                    <?php 
                      $sql1 = "SELECT * FROM posts WHERE post_id = :id";
                      $stmt1 = $pdo->prepare($sql1);
                      $stmt1->execute([
                        ':id'=> $_GET['id']
                      ]);
                      while($post = $stmt1->fetch(PDO::FETCH_ASSOC)) {
                        $post_title = $post['post_title'];
                      }
                      echo $post_title;
                    ?>
                    </a>
                </td>
                <td>
                    <form action="user_dashboard.php?q=comment&id=<?php echo $_GET['id']; ?>" method="POST">
                        <input type="hidden" value="<?php echo $c_id; ?>" name="val" />
                        <button type="submit" name="delete">
                          <i class="ti-trash" style="color: red; font-size: 30px;"></i> 
                        </button>
                    </form>               
                </td>
            </tr>
        <?php }
      ?>
          
      </tbody>
  </table>
  </div>
<?php endif; ?>
<?php
    if(isset($_POST['delete'])) {
      $cid = $_POST['val'];
      echo $cid;
      // delete the comments in comments table
      $sql2 = "DELETE FROM comments WHERE comment_id = :id";
      $stmt2 = $pdo->prepare($sql2);
      $stmt2->execute(
        [
          ':id' => $cid
        ]
        );
        // update post_comment in post table
        $sql4 = "UPDATE posts SET post_comment = post_comment - 1 WHERE post_id = :pid";
        $stmt4 = $pdo->prepare($sql4);
        $stmt4->execute([
          ':pid' => $_GET['id']
        ]);
        header("Location:user_dashboard.php?q=comment&id={$_GET['id']}");
      
    }
?>