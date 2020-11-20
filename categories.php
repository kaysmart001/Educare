<?php 
if(isset($_POST['update-cat'])) {
    $cat_t = trim($_POST['cat-t']);
    if(empty($cat_t)) {
        echo "<div class='alert alert-danger'>Sorry it can't be empty!</div>";
    } else {
    $catid = $_POST['value'];
    $sql3 = "UPDATE categories SET cat_title = :title WHERE cat_id = :catid";
    $stmt3 = $pdo->prepare($sql3);
    $stmt3->execute([
        ':title'=>$cat_t,
        ':catid'=>$catid
    ]);
    header("Location: user_dashboard.php?q=addcat"); }
}
 ?>
<?php if (@$_GET['q']=='addcat' && @$_GET['action']=='edit'){
      if(isset($_POST['update-category'])) {
          $id = $_POST['edit-cat-id'];
          $tit = $_POST['edit-cat-title'];?>
          <form action="user_dashboard.php?q=addcat" method="POST" class="py-4">
              <div class="row">
                  <div class="col">
                      <input type="hidden" value="<?php echo $id; ?>" name="value"/>
                      <input value="<?php echo $tit; ?>" name="cat-t" type="text" class="form-control" placeholder="Enter category name">
                  </div>
                  <div class="col">
                      <input name="update-cat" type="submit" class="btn btn-warning rounded" value="Update">
                  </div>
              </div>
          </form>
      <?php }
    }
      
  ?>
<?php 
if(isset($_POST['add-new-cat'])) {
    $cat_title =trim($_POST['cat-title']);
    if(empty($cat_title)) {
       header("Location: user_dashboard.php?q=addcat&error=1");
    } else {
        $sql2 = "INSERT INTO categories (cat_title) VALUE (:catt)";
        $stmt2 = $pdo->prepare($sql2);
        $stmt2->execute([
            ':catt'=>$cat_title
        ]);
        header("Location: user_dashboard.php?q=addcat");
    }
}
?>
<?php if (@$_GET['q']=='addcat'): ?>
  <form action="user_dashboard.php" method="POST" class="py-4">
    <?php if(@$_GET['error']==1): ?>
      <div class='alert alert-danger'>Field can't be blank!</div>
    <?php endif; ?>
      <div class="row">
          <div class="col">
              <input name="cat-title" type="text" class="form-control" placeholder="Enter category name">
          </div>
          <div class="col">
              <input name="add-new-cat" type="submit" class="btn btn-primary rounded" value="Add">
          </div>
      </div>
  </form>
  <h2>All Categories</h2>
  <table class="table">
      <thead class="thead-dark">
      <tr>
          <th scope="col">ID</th>
          <th scope="col">Category name</th>
          <th scope="col">Edit</th>
      </tr>
      </thead>
      <tbody>  
      <?php
          $sql = "SELECT * FROM categories";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();
          while($category = $stmt->fetch(PDO::FETCH_ASSOC)) {
              $cat_id = $category['cat_id'];
              $cat_title = $category['cat_title'];?>
              <tr>
                  <td><?php echo $cat_id; ?></td>
                  <td><?php echo $cat_title; ?></td>
                  <td>
                      <form method="POST" action="user_dashboard.php?q=addcat&action=edit">
                          <input type='hidden' name="edit-cat-title" value="<?php echo $cat_title; ?>" />
                          <input type="hidden" name="edit-cat-id" value="<?php echo $cat_id; ?>"/>
                          <button type="submit" name="update-category">
                            <i class="ti-pencil" style="color: grey; font-size: 30px;"></i>
                          </button>
                      </form>
                  </td>
              </tr>
          <?php }
      ?>
      </tbody>
  </table>
<?php endif; ?>