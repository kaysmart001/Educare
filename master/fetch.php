<?php
require_once("assets/db/dbConnection.php");
$request=$_REQUEST;
$col =array(
    0   =>  'user_id',
    1   =>  'user_name',
    2   =>  'user_email',
    3   =>  'user_phone',
    4   =>  'user_dept'
);  //create column like table in database

$sql ="SELECT * FROM users";
$query=mysqli_query($conn,$sql);

$totalData=mysqli_num_rows($query);

$totalFilter=$totalData;

//Search
$sql ="SELECT * FROM users WHERE 1=1";
if(!empty($request['search']['value'])){
    $sql.=" AND (user_id Like '".$request['search']['value']."%' ";
    $sql.=" OR user_name Like '".$request['search']['value']."%' ";
    $sql.=" OR user_email Like '".$request['search']['value']."%' ";
    $sql.=" OR user_phone Like '".$request['search']['value']."%' ";
    $sql.=" OR user_dept Like '".$request['search']['value']."%' )";
}
$query=mysqli_query($conn,$sql);
$totalData=mysqli_num_rows($query);

//Order
$sql.=" ORDER BY ".$col[$request['order'][0]['column']]."   ".$request['order'][0]['dir']."  LIMIT ".
    $request['start']."  ,".$request['length']."  ";

$query=mysqli_query($conn,$sql);

$data=array();

while($row=mysqli_fetch_array($query)){
    $subdata=array();
    $subdata[]=$row[0]; //id
    $subdata[]=$row[1]; //name
    $subdata[]=$row[2]; //email
    $subdata[]=$row[3]; //phone
    $subdata[]=$row[4]; //dpt           //create event on click in button edit in cell datatable for display modal dialog           $row[0] is id in table on database
    $subdata[]='<a href="update.php?demail='.$row[2].'"><button type="button" class="btn btn-danger btn-xs"><i class="ti-trash"></i></button></a>';
    $data[]=$subdata;
}

$json_data=array(
    "draw"              =>  intval($request['draw']),
    "recordsTotal"      =>  intval($totalData),
    "recordsFiltered"   =>  intval($totalFilter),
    "data"              =>  $data
);

echo json_encode($json_data);

?>
