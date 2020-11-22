   <?php 
   if (isset($_POST['cart'])) {
     $item_id=$_POST['item_id'];
     $item_name=$_POST['item_name'];
     $item_amount=$_POST['item_amount'];
     $buyer=$_POST['buyer'];
     $check=mysqli_query($conn,"SELECT * FROM cart WHERE item_id='$item_id' AND user_id='$email'");
     if (mysqli_num_rows($check)>=1) { ?>
      <script>
        mcxDialog.toast("item already exists in cart", 3);
      </script>
    <?php
     }else{
        $addtocart=mysqli_query($conn,"INSERT INTO cart(item_id,item_name,item_amount,user_id) VALUES('$item_id','$item_name','$item_amount','$buyer')")or die('Error adding item to cart');
     if ($addtocart) { ?>
       <script>
        mcxDialog.toast("item added to cart successfully", 3);
      </script>
      <?php
      }
     }
     
   }
  ?>

<style type="text/css">
.active-cyan-2 input.form-control[type=text]:focus:not([readonly]) {
  border-bottom: 1px solid #4dd0e1;
  box-shadow: 0 1px 0 0 #4dd0e1;
}
.active-cyan-2 input.form-control[type=text] {
  border-bottom: 1px solid #4dd0e1;
  box-shadow: 0 1px 0 0 #4dd0e1;
}
.active-cyan-2 .ti-search {
  color: #4dd0e1;
}
</style>
   <?php  if (@$_GET['q']==9 || !isset($_GET['q']) ): ?>
    <h3 style="color:white; background-color:midnightblue;" class="mb-3 p-2">PREMIUM COURSES</h3>
     <div class="row" id="myItems">
        <div class="col-md-8 offset-md-2 mb-3">
           <!-- Search form -->
            <form class="form-inline d-flex justify-content-center md-form form-sm active-cyan active-cyan-2 mt-2">
              <i class="ti-search" aria-hidden="true"></i>
              <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search Course"
                aria-label="Search" id="myFilter" onkeyup="myFunction()">
            </form>
        </div>
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
   
  <div class="col-lg-4 col-sm-6 col-md-4 col-xs-6 course-item">
    <div class="card p-2 rounded hover-shadow">
      <h4 class="card-header course-title"><?php echo $course_title; ?></h4>
      <div class="card-body">
        <h6 class="card-title mb-3"><?php echo $course_des; ?></h6>
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
        <div class="card-footer text-muted">
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
  </div>
       <?php endwhile; ?>
</div>
<?php endif; ?>