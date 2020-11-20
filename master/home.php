<!--home start-->
<?php if(!isset($_GET['q'])): ?>
<?php $result = mysqli_query($conn,"SELECT * FROM quiz ORDER BY date DESC"); ?>

<div class="table-responsive">
	<table class="table table-striped">
		<div id="alert"></div>
		<tr style="color:midnightblue">
			<th>S.N.</th>
			<th>Course_ID</th>
			<th>Course_code</th>
			<th>Title</th>
			<th>Total questions</th>
			<th>Time limit</th>
			<th>Price</th>
			<th colspan="2">Action</th>
		</tr>
<?php
$c=1;
while($row = mysqli_fetch_array($result)) {
	$code = $row['title'];
	$title= $row['intro'];
	$total = $row['total'];
	$sahi = $row['sahi'];
    $time = $row['time'];
	$eid = $row['eid'];
	$price= $row['price'];
	$id= $row['id'];
	?>
	<tr>
		<td><?php echo $c++; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $eid; ?>" onBlur="saveInlineEdit(this,'eid','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $eid; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $code; ?>" onBlur="saveInlineEdit(this,'title','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $code; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $title; ?>" onBlur="saveInlineEdit(this,'intro','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $title; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $total; ?>" onBlur="saveInlineEdit(this,'total','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $total; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $time; ?>" onBlur="saveInlineEdit(this,'time','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $time; ?></td>
		<td contenteditable="true" data-old_value="<?php echo $price; ?>" onBlur="saveInlineEdit(this,'price','<?php echo $id; ?>','quiz')" onClick="highlightEdit(this);"><?php echo $price; ?></td>
		<td>
		<a <?php echo 'href="update.php?q=quizre&step=25&eid='.$eid.'&n=1&t='.$total.'"'; ?> class="btn btn-primary"><i class="ti-control-play"></i></a>
		</td>
		<td><a <?php echo 'href="update.php?q=rmquiz&eid='.$eid.'"'; ?> class="btn btn-danger"><i class="ti-trash"></i></a>
  		</td>
  	</tr>

<?php
}
?>
</table>
</div>
<?php endif; ?>