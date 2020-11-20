function payWithPaystack(){
 var handler = PaystackPop.setup({
   key: 'pk_test_ff29c8dce7c4655bbb275c78afb2e7c0ad6d315f',
   email: '<?php echo $email; ?>',
   amount: <?php echo $course_price*100; ?>,
   fullname:'<?php echo $user; ?>',
   ref: 'Educare'+Math.floor((Math.random() * 50000000000) + 1000),
   metadata: {
      custom_fields: [
         {
             display_name: "Customer Number",
             variable_name: "Customer_number",
             value: "<?php echo $phone; ?>"
         },
         {
               display_name:"purchased Items",
               variable_name:"purchased_items",
               value:"<?php echo $course_title ($course_des);  ?>"
         }
      ]
   },
   callback: function(response){
     $.ajax({
       url:'verify.php?reference='+response.reference+'&item_id='+<?php echo $eid; ?>,
       method:'post',
       success:function(data){
         alert(data);
       }
     });
   },
   onClose: function(){
       alert('Transaction cancelled');
   }
 });
 handler.openIframe();
}







function payWithPaystack() {

    var handler = PaystackPop.setup({ 
        key: 'your_public_key', //put your public key here
        email: 'customer@email.com', //put your customer's email here
        amount: 370000, //amount the customer is supposed to pay
        metadata: {
            custom_fields: [
                {
                    display_name: "Mobile Number",
                    variable_name: "mobile_number",
                    value: "+2348012345678" //customer's mobile number
                }
            ]
        },
        callback: function (response) {
            //after the transaction have been completed
            //make post call  to the server with to verify payment 
            //using transaction reference as post data
            $.post("verify.php", {reference:response.reference}, function(status){
                if(status == "success")
                    //successful transaction
                    alert('Transaction was successful');
                else
                    //transaction failed
                    alert(response);
            });
        },
        onClose: function () {
            //when the user close the payment modal
            alert('Transaction cancelled');
        }
    });
    handler.openIframe(); //open the paystack's payment modal

}

callback: function (response) {
                        //after the transaction have been completed
                        //make post call  to the server with to verify payment 
                        //using transaction reference as post data
                        $.ajax({
                          url:"verify.php?reference=" + response.reference,
                          method:"post",
                          success:function(status){
                            if(status == "success"){
                                //successful transaction
                                alert('payment was successful');
                            }else{
                                //transaction failed
                                alert(response);
                              }
                        }
                    });
                  }


<?php
//check if request was made with the right data
if(!$_SERVER['REQUEST_METHOD'] == 'POST' || !isset($_POST['reference'])){  
  die("Transaction reference not found");
}

//set reference to a variable @ref
$reference = $_POST['reference'];

//The parameter after verify/ is the transaction reference to be verified
$url = 'https://api.paystack.co/transaction/verify/'.$reference;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt(
  $ch, CURLOPT_HTTPHEADER, [
    'Authorization: Bearer secret_key']
);

//send request
$request = curl_exec($ch);
//close connection
curl_close($ch);
//declare an array that will contain the result 
$result = array();

if ($request) {
  $result = json_decode($request, true);
}

if (array_key_exists('data', $result) && array_key_exists('status', $result['data']) && ($result['data']['status'] === 'success')) {
  echo "success";
  //Perform necessary action
}else{
  echo "Transaction was unsuccessful";
}

$authorization_code=$result['data']['authorization']['authorization_code'];
$channel=$result['data']['authorization']['channel'];
$card_type=$result['data']['authorization']['card_type'];
$last4=$result['data']['authorization']['last4'];
$exp_month=$result['data']['authorization']['exp_month'];
$exp_year=$result['data']['authorization']['exp_year'];
$bank=$result['data']['authorization']['bank'];
$customer_id=$result['data']['customer']['id'];
$customer_code=$result['data']['customer']['customer_code'];
$customer_email=$result['data']['customer']['email'];