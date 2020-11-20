<?php 
include_once 'dbConnection.php';
//check if request was made with the right data
if(!isset($_GET['reference'])){  
  die("Transaction reference not found");
}

//set reference to a variable @ref
$reference = $_GET['reference'];

//The parameter after verify/ is the transaction reference to be verified
$url = 'https://api.paystack.co/transaction/verify/'.$reference;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt(
  $ch, CURLOPT_HTTPHEADER, [
    "Authorization:Bearer sk_test_c9625d836ad35e5b6093b9687f645106be13417e"
  ]
);

//send request
$request = curl_exec($ch);
//close connection
curl_close($ch);
//declare an array that will contain the result 
$result = array();
if ($request) {
    $result = json_decode($request, true);
    // print_r($result);
    if($result){
      if($result['data']){
        //something came in
        if($result['data']['status'] == 'success'){
          // the transaction was successful, you can deliver value
          echo "Transaction was successful";
          $fee=$result['data']['amount']/100;
          $authorization_code=$result['data']['authorization']['authorization_code'];
          $customer_email=$result['data']['customer']['email'];
          $sql=mysqli_query($conn,"INSERT INTO subscription(customer,authorization) VALUES('$customer_email','$authorization_code')");
          $sql2=mysqli_query($conn,"UPDATE wallet SET wallet_amount=wallet_amount+ '$fee' WHERE email='$customer_email'");
          header('location:user_dashboard.php?q=10');
        }else{
          // the transaction was not successful, do not deliver value'
          // print_r($result);  //uncomment this line to inspect the result, to check why it failed.
          echo "Transaction was not successful: Last gateway response was: ".$result['data']['gateway_response'];
        }
      }else{
        echo $result['message'];
      }
      }else{
      //print_r($result);
      die("Something went wrong while trying to convert the request variable to json.");
    }
  }else{
    //var_dump($request);
    die("Something went wrong while executing curl.");
  }
