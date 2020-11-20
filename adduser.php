<?php
//Open a new connection to the MySQL server
include_once 'dbConnection.php';

//Output any connection error
if ($mysqli->connect_error) {
    die('Error : (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

if (isset($_POST['signup'])) {
$fullname = mysqli_real_escape_string($mysqli, $_POST['signupName']);
$email = mysqli_real_escape_string($mysqli, $_POST['signupEmail']);
$phone = mysqli_real_escape_string($mysqli, $_POST['signupPhone']);
$dept  = mysqli_real_escape_string($mysqli, $_POST['signupDept']);
$password = mysqli_real_escape_string($mysqli, $_POST['signupPassword']);
$ref=uniqid();

//VALIDATION
if (strlen($fullname) < 2) {
     $error='Name is too short';
} elseif (strlen($email) <= 4) {
    $error= 'Email is too short';
} elseif (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
    $error='Invalid Email format';
} elseif (strlen($password) <= 4) {
    $error='password is too short';
	

	
} elseif (strlen($phone) < 11) {
    $error='Invalid Phone number';
	
} else {
	
	//PASSWORD ENCRYPT
	$spassword = password_hash($password, PASSWORD_BCRYPT, array('cost' => 12));
	
	$query = "SELECT * FROM users WHERE user_email='$email'";
	$result = mysqli_query($mysqli, $query) or die(mysqli_error());
	$num_row = mysqli_num_rows($result);
	$row = mysqli_fetch_array($result);
	
		if ($num_row < 1) {

			$insert_row = $mysqli->query("INSERT INTO users(user_name,user_email,user_phone,user_dept,user_password,referral_code) VALUES('$fullname','$email','$phone','$dept','$spassword','$ref')");

			if ($insert_row) {
				$message='Registration successfully completed, ';
				$addcoin=$mysqli->query("INSERT INTO wallet(email,wallet_amount,coins) VALUES('$email',50,20)");
				if ($addcoin) {
					$message.='you have earned &#8358;50 and 20 coins.';
				}
			}

		} else {

			$error='Registration failed! please try again';

			}
		
		}

	}
/*else{
	header('location:index.php');
}
*/
?>