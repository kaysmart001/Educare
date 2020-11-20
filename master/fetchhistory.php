<?php
require_once("assets/db/dbConnection.php");
$sql ="SELECT u.user_name AS 'Student',q.title AS 'Quiz', h.level AS 'Total Questions',h.sahi AS 'Right',h.wrong AS 'Wrong',h.score AS 'Score',h.timetaken AS 'Time-taken',h.date AS 'Date' FROM history h JOIN quiz q ON h.eid=q.eid JOIN users u ON h.email=u.user_email";
$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
$data = array();
while( $rows = mysqli_fetch_assoc($resultset) ) {
    $data[] = $rows;
}

$results = array(
    "sEcho" => 1,
"iTotalRecords" => count($data),
"iTotalDisplayRecords" => count($data),
  "aaData"=>$data);

echo json_encode($results);
exit;

?>
