   <?php 
   if (isset($_POST['cart'])) {
     $item_id=$_POST['item_id'];
     $item_name=$_POST['item_name'];
     $item_amount=$_POST['item_amount'];
     $buyer=$_POST['buyer'];
     $check=mysqli_query($conn,"SELECT * FROM cart WHERE item_id='$item_id' AND user_id='$email'");
     if (mysqli_num_rows($check)>=1) {
       $message='item already exists in cart';
       header("location:user_dashboard.php?q=9&message=$message");
     }else{
        $addtocart=mysqli_query($conn,"INSERT INTO cart(item_id,item_name,item_amount,user_id) VALUES('$item_id','$item_name','$item_amount','$buyer')")or die('Error adding item to cart');
     if ($addtocart) {
       $message='item added to cart successfully';
       header("location:user_dashboard.php?q=9&message=$message");
      }
     }
     
   }

    ?>
    <?php echo isset($_GET['message'])?"<div class='alert alert-success'>".$_GET['message']."</div>":''; ?>
   <?php  if (@$_GET['q']==9 || !isset($_GET['q']) ): ?>
    <h3 style="color:white; background-color:midnightblue;" class="mb-3 p-2">PREMIUM COURSES</h3>
     <div class="row">
    <?php 
    $sql = "SELECT * FROM quiz WHERE price !='free' ORDER BY title";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(); 
    ?>         
      <?php while($course = $stmt->fetch(PDO::FETCH_ASSOC)): ?>
         <?php 
            $eid=$course['eid'];
            $course_title=$course['title'];
            $course_date=$course['date'];
            $course_des=$course['intro'];
            $total=$course['total'];
            $course_time=$course['time'];
            $course_price=$course['price'];
        ?>
   
  <div class="col-lg-4 col-sm-6 col-md-4 col-xs-6">
    <div class="card p-2 rounded hover-shadow">
      <div class="card-body">
        <a href="#">
          <h4 class="card-title course-title"><?php echo $course_title; ?></h4>
        </a>
        <h6 class="card-text mb-3"><?php echo $course_des; ?></h6>
        <ul class="list-group mb-2">
            <li class="list-group-item d-flex justify-content-between align-items-center">
            <i class="ti-list mr-1"> Total Questions</i>
            <span class="badge badge-primary badge-pill" style="background-color: midnightblue;"><?php echo $total; ?></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
            <i class="ti-time mr-1"> Time Allowed</i>
            <span class="badge badge-primary badge-pill" style="background-color: midnightblue;"><?php echo $course_time; ?> mins</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
            <i class="ti-credit-card mr-1"> price</i> 
            <span class="badge badge-primary badge-pill" style="background-color: midnightblue;">&#8358;<?php echo $course_price; ?></span>
            </li>
        </ul>
        <form method="post">
          <input type="hidden" name="item_id" value="<?php echo $eid; ?>">
          <input type="hidden" name="item_name" value="<?php echo $course_title; ?>">
          <input type="hidden" name="item_amount" value="<?php echo $course_price; ?>">
          <input type="hidden" name="buyer" value="<?php echo $email; ?>">
          <button type="submit" class="btn btn-primary btn-sm rounded" name="cart">
            <i class="ti-shopping-cart" style="color: white;"></i>Add to Cart
          </button>
        </form>
      </div>
    </div>
  </div>
       <?php endwhile; ?>
</div>
<?php endif; ?>