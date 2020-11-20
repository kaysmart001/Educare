<?php
if(@$_GET['q']== 'cart' && @$_GET['opt']=='wallet'){
$fetchwallet=mysqli_query($conn,"SELECT * FROM wallet WHERE email='$email'");
$wallet=mysqli_fetch_assoc($fetchwallet);
$balance=$wallet['wallet_amount'];
$fetchcart=mysqli_query($conn,"SELECT sum(item_amount) as 'total' FROM cart WHERE user_id='$email'");
$cart1 =mysqli_fetch_assoc($fetchcart);
$amount=$cart1['total'];
if ($balance>=$amount) {
  $sqlfetchcart=mysqli_query($conn,"SELECT * FROM cart WHERE user_id='$email'");
  $carts = mysqli_fetch_all($sqlfetchcart,MYSQLI_ASSOC);
  foreach ($carts as $cart) {
    $cartitemid=$cart['item_id'];
    $fetchpurchases=mysqli_query($conn,"SELECT * FROM purchased_courses WHERE user_id='$email' AND course_id='$cartitemid'");
    if(mysqli_num_rows($fetchpurchases)==1){
      $updatecourse=mysqli_query($conn,"UPDATE purchased_courses SET trials=trials+5 WHERE user_id='$email' AND course_id='$cartitemid'");
    }else{
      $addcourse=mysqli_query($conn,"INSERT INTO purchased_courses(course_id,user_id,trials) VALUES('$cartitemid','$email',5)");
    }
  }
  $emptycart=mysqli_query($conn,"DELETE FROM cart WHERE user_id='$email'");
  $currentbalance=$balance-$amount;
  $updatebalance=mysqli_query($conn,"UPDATE wallet SET wallet_amount='$currentbalance' WHERE email='$email'");
  echo "<script>alert('Course(s) successfully purchased');</script>";
  echo "<script>document.location.href='user_dashboard.php?q=purchased';</script>";
}else{
  echo "<script>alert('Course(s) could not be purchased due to insufficient funds, kindly fund your wallet and try again');</script>";
}

}

if(@$_GET['q']== 'cart' && @$_GET['opt']=='coins'){
 $fetchwallet=mysqli_query($conn,"SELECT * FROM wallet WHERE email='$email'");
 $wallet=mysqli_fetch_assoc($fetchwallet);
 $balance=$wallet['coins'];
 $fetchcart=mysqli_query($conn,"SELECT sum(item_amount) as 'total' FROM cart WHERE user_id='$email'");
 $cart1 =mysqli_fetch_assoc($fetchcart);
 $amount=$cart1['total'];
 if ($balance>=$amount*2) {
   $sqlfetchcart=mysqli_query($conn,"SELECT * FROM cart WHERE user_id='$email'");
   $carts = mysqli_fetch_all($sqlfetchcart,MYSQLI_ASSOC);
   foreach ($carts as $cart) {
     $cartitemid=$cart['item_id'];
     $fetchpurchases=mysqli_query($conn,"SELECT * FROM purchased_courses WHERE user_id='$email' AND course_id='$cartitemid'");
     if(mysqli_num_rows($fetchpurchases)==1){
       $updatecourse=mysqli_query($conn,"UPDATE purchased_courses SET trials=trials+5 WHERE user_id='$email' AND course_id='$cartitemid'");
     }else{
       $addcourse=mysqli_query($conn,"INSERT INTO purchased_courses(course_id,user_id,trials) VALUES('$cartitemid','$email',5)");
     }
   }
   $emptycart=mysqli_query($conn,"DELETE FROM cart WHERE user_id='$email'");
   $currentbalance=$balance-($amount*2);
   $updatebalance=mysqli_query($conn,"UPDATE wallet SET coins='$currentbalance' WHERE email='$email'");
   echo "<script>alert('Course(s) successfully purchased');</script>";
   echo "<script>document.location.href='user_dashboard.php?q=purchased';</script>";
 }else{
   echo "<script>alert('Course(s) could not be purchased due to insufficient funds, kindly fund your wallet and try again');</script>";
 }

}

  if (! empty($_GET["action"])) {
      $id=$_GET["id"];
      switch ($_GET["action"]) {
          case "remove":
              // Delete single entry from the cart
          $rmitem=mysqli_query($conn,"DELETE FROM cart WHERE item_id='$id' AND user_id='$email'");
          header("location:user_dashboard.php?q=cart");
              break;
          case "empty":
              // Empty cart
          $rmallitem=mysqli_query($conn,"DELETE FROM cart WHERE user_id='$email'");
          header("location:user_dashboard.php?q=cart");
              break;
      }
  }
?>

  <?php if(@$_GET['q']== 'cart'): ?>
        <div id="shopping-cart">
            <div class="txt-heading">
                <div class="txt-heading-label">Shopping Cart</div> <a id="btnEmpty" href="user_dashboard.php?action=empty"><img src="empty-cart.png" alt="empty-cart" title="Empty Cart" /></a>
            </div>
    <?php
    $sql30=mysqli_query($conn,"SELECT * FROM cart WHERE user_id='$email'");
    $cartItem = mysqli_fetch_all($sql30,MYSQLI_ASSOC);
    if (! empty($cartItem)) {
        $item_total = 0;
        $item_purchased=array();
        $quantity=1;
    ?> 
    <div class="table-responsive"> 
    <table>
                <tbody>
                    <tr>
                        <th style="text-align: left;"><strong>Name</strong></th>
                        <th style="text-align: right;"><strong>Quantity</strong></th>
                        <th style="text-align: right;"><strong>Price</strong></th>
                        <th style="text-align: center;"><strong>Action</strong></th>
                    </tr> 
    <?php
        foreach ($cartItem as $item) {
            ?>
            <tr>
                        <td
                            style="text-align: left; border-bottom: #F0F0F0 1px solid;"><strong><?php echo $item["item_name"]; ?></strong></td>
                        <td
                            style="text-align: right; border-bottom: #F0F0F0 1px solid;"><?php echo $quantity; ?></td>
                        <td
                            style="text-align: right; border-bottom: #F0F0F0 1px solid;">&#8358;<?php echo $item["item_amount"]; ?></td>
                        <td
                            style="text-align: center; border-bottom: #F0F0F0 1px solid;"><a
                            href="user_dashboard.php?action=remove&id=<?php echo $item["item_id"]; ?>"
                            class="btnRemoveAction"><img src="icon-delete.png" alt="icon-delete" title="Remove Item" /></a></td>
              </tr>
            <?php
            $item_total += ($item["item_amount"] * $quantity);
            array_push($item_purchased,$item['item_name']);
            $total_item_purchased=implode(',',$item_purchased);
        }
        ?>

                    <tr>        
                        <td></td>
                        <td align=right><strong>Total:</strong></td>
                        <td align=right>&#8358;<?php echo $item_total; ?></td>
                        <td>
                            <a class="btn btn-primary btn-sm rounded m-2" href="user_dashboard.php?q=cart&opt=wallet"><i class="ti-wallet" name="walletpay"></i> Pay From Wallet
                            </a>
                            <a class="btn btn-primary btn-sm rounded" href="user_dashboard.php?q=cart&opt=coins"><i class="ti-server" name="coinpay"></i> Pay with coins
                            </a><span class="text-success"> <b>2 coins is equivalent of &#8358;1</b></span>
                        </td>
                    </tr>
                </tbody>
            </table> 
          </div>
        <?php }
        else{
          echo "<div class='alert alert-danger text-center'>Your Cart is empty!</div>";
        } 
        ?>
   </div>   
<?php endif; ?>