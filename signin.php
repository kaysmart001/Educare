<?php
//Open a new connection to the MySQL server
include_once 'dbConnection.php';


//Output any connection error
if ($mysqli->connect_error) {
    die('Error : (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
if (isset($_POST['login'])) {
    $email = mysqli_real_escape_string($mysqli,$_POST['email']);
    $password = $_POST['pass'];
    $query = "SELECT * FROM users WHERE user_email='$email'";
    $result = mysqli_query($mysqli, $query) or die(mysqli_error($mysqli));
    $num_row = mysqli_num_rows($result);
    $row = mysqli_fetch_array($result);

if ($num_row >= 1) {

    if (password_verify($password, $row['user_password'])) {
        session_start();
        $_SESSION['login'] = $row['user_id'];
        $_SESSION['fullname'] = $row['user_name'];
        $_SESSION['email'] = $row['user_email'];
        $_SESSION['phone']= $row['user_phone'];
        header('location:user_dashboard.php');
    }
    else {
        echo "<script>alert('Please confirm that email and password are correct and try again');</script>";
    }

} else {
    echo "<script>alert('Please confirm that email and password are correct and try again');</script>";
}
}



?>