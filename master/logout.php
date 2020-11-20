<?php
if(@$_GET['q']==13) {
session_start();
unset($_SESSION['key']);
unset($_SESSION['admin_email']);
session_unset();
session_destroy();
setcookie('_ua_', '', time()-(60*60*24), '', '', '', 1);
header('location:index.php');
}

?>
