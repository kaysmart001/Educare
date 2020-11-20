<?php if(@$_GET['q']== 10): ?>
<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active text-dark" data-toggle="pill" href="#home">My Wallet</a>
  </li>
  <!-- <li class="nav-item">
    <a class="nav-link text-dark" data-toggle="pill" href="#menu1">Transaction History</a>
  </li> -->
</ul>

<!-- Tab panes -->
<?php 
$fetchwallet=mysqli_query($conn,"SELECT * FROM wallet WHERE email='$email'");
$wallet=mysqli_fetch_assoc($fetchwallet);
$balance=$wallet['wallet_amount'];
$coins=$wallet['coins'];
 ?>
<div class="tab-content mt-2">
  <div class="tab-pane container active" id="home">
    <div class="card bg-primary rounded border border-0 shadow">
      <div class="card-header h4 text-left text-white">Balance</div>
      <div class="card-body h5 text-white clear-fix"><span class="ti-wallet float-left"></span><span class="float-right">&#8358;<?php echo $balance; ?></span></div>
    </div>
    <div class="card bg-secondary rounded border border-0 mt-2 shadow">
      <div class="card-header h4 text-left text-white">Coins</div>
      <div class="card-body h5 text-white clear-fix"><span class="ti-server float-left"></span><span class="float-right"><?php echo $coins; ?></span></div>
    </div>
    <div class="card bg-info rounded border border-0 mt-2 shadow">
      <div class="card-header h4 text-left text-white">Fund wallet</div>
      <div class="card-body h5 text-white clear-fix">
        <span class="ti-plus float-left"></span>
        <span class="float-right">
            <form class="form-inline">
              <script src="https://js.paystack.co/v1/inline.js"></script>
              <label for="amount">&#8358;</label>
              <input type="number" class="form-control mb-2" placeholder="Enter amount" id="amount" name="amount">
              <button type="button" onclick="payWithPaystack()" class="btn btn-info btn-sm rounded"><i class="ti-credit-card"></i> Add money</button>
            </form>
            <script>
              function payWithPaystack() {
                  let form=document.querySelector('form');
                  let amount=form.amount.value;
                  var handler = PaystackPop.setup({ 
                      key: 'pk_test_ff29c8dce7c4655bbb275c78afb2e7c0ad6d315f', //put your public key here
                      email: "<?php echo $email; ?>", //put your customer's email here
                      amount: amount * 100, //amount the customer is supposed to pay
                      fullname:"<?php echo $user; ?>",
                      ref: 'EDUCARE'+Math.floor((Math.random() * 50000000000) + 6632),
                      metadata: {
                        custom_fields: [
                            {
                                display_name: "Mobile Number",
                                variable_name: "mobile_number",
                                value: "<?php echo $phone; ?>" 
                            }
                        ]
                    },
                      callback: function (response) {
                          //after the transaction have been completed
                          //make post call  to the server with to verify payment 
                          //using transaction reference as post data
                        //   $.ajax({
                        //     url: "verify.php?reference="+ response.reference, 
                        //     method: "post",
                        //     success: function(data){
                        //       if(data.status==='success')
                        //           //successful transaction
                        //           alert('payment was successful');
                        //       else
                        //           //transaction failed
                        //           alert(response);
                        //   }
                        // });
                       window.location="verify.php?reference=" + response.reference;
                      },
                      onClose: function () {
                          //when the user close the payment modal
                          alert('Transaction cancelled');
                      }
                  });
                  handler.openIframe(); //open the paystack's payment modal
              }

            </script>

        </span>
      </div>
    </div>
  </div>
  <!-- <div class="tab-pane container fade" id="menu1"></div> -->
</div>
<?php endif; ?>