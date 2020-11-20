<?php
// ERROR LOGS, BUT NO ERROR DISPLAYS
date_default_timezone_set("Africa/Lagos");
ini_set('display_errors', FALSE);
ini_set('log_errors', TRUE);
$conn=mysqli_connect('localhost','root','','edu') or die(mysqli_error($conn)); 

 $dsn = "mysql:host=localhost;dbname=edu";
    try {
        $pdo = new PDO($dsn, 'root', '');
    }
    catch(PDOException $e) {
        echo $e->getMessage();
    }

$mysqli = new mysqli('localhost', 'root', '', 'edu');

?>