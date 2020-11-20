<!-- manage Questions -->
<?php 
if(@$_GET['q']=='addquestions'){

  if(isset($_POST['add-questions'])){
    $eid=$_POST['course'];
    echo ' 
    <form class="form-horizontal title1" name="form" action="update.php?q=addmoreqn&eid='.$eid.'"  method="POST">
    <fieldset>
    <h3>Enter Question Details</h3> 
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="sn"></label>  
      <div class="col-md-12">
      <input id="sn" name="sn" placeholder="Enter serial number" class="form-control input-md" type="text">
        
      </div>
    </div> 

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="qns"></label>  
      <div class="col-md-12">
      <textarea rows="3" cols="5" name="qns" class="form-control" placeholder="Write question number"></textarea>  
      </div>
    </div>
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="oa"></label>  
      <div class="col-md-12">
      <input id="oa" name="oa" placeholder="Enter option a" class="form-control input-md" type="text">
        
      </div>
    </div>
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="ob"></label>  
      <div class="col-md-12">
      <input id="ob" name="ob" placeholder="Enter option b" class="form-control input-md" type="text">
        
      </div>
    </div>
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="oc"></label>  
      <div class="col-md-12">
      <input id="oc" name="oc" placeholder="Enter option c" class="form-control input-md" type="text">
        
      </div>
    </div>
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="od"></label>  
      <div class="col-md-12">
      <input id="od" name="od" placeholder="Enter option d" class="form-control input-md" type="text">
        
      </div>
    </div>
    <br />
    <b>Correct answer</b>:<br />
    <select id="ans" name="ans" placeholder="Choose correct answer " class="form-control input-md" >
       <option value="a">Select answer</option>
      <option value="a">option a</option>
      <option value="b">option b</option>
      <option value="c">option c</option>
      <option value="d">option d</option> </select><br /><br />      
    <div class="form-group">
      <label class="col-md-12 control-label" for=""></label>
      <div class="col-md-12"> 
        <input  type="submit" style="margin-left:10%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
      </div>
    </div>

    </fieldset>
    </form>';

}
}
if(@$_GET['q']==55) {
  $q=mysqli_query($conn,"SELECT * FROM quiz ORDER BY title");
  $allquiz=mysqli_fetch_all($q,MYSQLI_ASSOC);
  echo '<form class="form-horizontal title1" name="form" action="admin_dashboard.php?q=addquestions"  method="POST">
    <fieldset>
       <h3>Select the Course you want to add questions to</h3>
      <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="time"></label>  
      <div class="col-md-12">
      <select class="form-control input-md" name="course">';
  foreach ($allquiz as $quiz) {
      $eid=$quiz['eid'];
      $course=$quiz['title'];
       echo' <option value="'.$eid.'">'.$course.'</option>'; 
  }
  echo '</select>
        
      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for=""></label>
      <div class="col-md-12"> 
        <input  type="submit" style="margin-left:10%" class="btn btn-primary" value="submit" class="btn btn-primary" name="add-questions"/>
      </div>
    </div>

    </fieldset>
    </form>';



}

if(@$_GET['q']=='managequestions'){

  if(isset($_POST['manage-questions'])){
    $eid=$_POST['course'];
    $q=mysqli_query($conn,"SELECT * FROM questions WHERE eid='$eid' ORDER BY sn");
    $allquestions=mysqli_fetch_all($q,MYSQLI_ASSOC);
    ?>
    <div class="table-responsive">
      <table class="table table-striped">
        <div id="alert"></div>
        <tr style="color:midnightblue">
          <th>S.N.</th>
          <th>Qid</th>
          <th>Qns</th>
          <th>Option a</th>
          <th>Option b</th>
          <th>Option c</th>
          <th>Option d</th>
          <th>oaid</th>
          <th>obid</th>
          <th>ocid</th>
          <th>odid</th>
          <th>ansid</th>
          <th>Action</th>
        </tr>
  <?php
    foreach ($allquestions as $qns) {
      $qid=$qns['qid'];
      $qn=$qns['qns'];
      $oa=$qns['oa'];
      $ob=$qns['ob'];
      $oc=$qns['oc'];
      $od=$qns['od'];
      $oaid=$qns['oaid'];
      $obid=$qns['obid'];
      $ocid=$qns['ocid'];
      $odid=$qns['odid'];
      $ansid=$qns['ansid'];
      $sn=$qns['sn'];
      $id=$qns['id'];
  ?>
      <tr>
        <td contenteditable="true" data-old_value="<?php echo $sn; ?>" onBlur="saveInlineEdit(this,'sn','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $sn; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $qid; ?>" onBlur="saveInlineEdit(this,'qid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $qid; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $qn; ?>" onBlur="saveInlineEdit(this,'qns','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $qn; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $oa; ?>" onBlur="saveInlineEdit(this,'oa','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $oa; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $ob; ?>" onBlur="saveInlineEdit(this,'ob','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $ob; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $oc; ?>" onBlur="saveInlineEdit(this,'oc','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $oc; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $od; ?>" onBlur="saveInlineEdit(this,'od','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $od; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $oaid; ?>" onBlur="saveInlineEdit(this,'oaid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $oaid; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $obid; ?>" onBlur="saveInlineEdit(this,'obid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $obid; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $ocid; ?>" onBlur="saveInlineEdit(this,'ocid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $ocid; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $odid; ?>" onBlur="saveInlineEdit(this,'odid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $odid; ?></td>
        <td contenteditable="true" data-old_value="<?php echo $ansid; ?>" onBlur="saveInlineEdit(this,'ansid','<?php echo $id; ?>','questions')" onClick="highlightEdit(this);"><?php echo $ansid; ?></td>
        <td>
          <form method="POST" action="update.php?q=remove-question&eid='.$eid.'">
            <input type="hidden" value="<?php echo $qid; ?>" name="qid"/>
            <input type="hidden" value="<?php echo $sn; ?>" name="sn"/>
            <button type="submit" name="remove-question" class="btn btn-danger"><i class="ti-trash"></i></button>
          </form>
        </td>
      </tr>
<?php } ?>
    </table>
  </div>
<?php
  }
}



if(@$_GET['q']==50) {
  $q=mysqli_query($conn,"SELECT * FROM quiz ORDER BY title");
  $allquiz=mysqli_fetch_all($q,MYSQLI_ASSOC);
  echo '<form class="form-horizontal title1" name="form" action="admin_dashboard.php?q=managequestions"  method="POST">
    <fieldset>
      <h3>Select the Course which questions you want to manage</h3>
      <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="time"></label>  
      <div class="col-md-12">
      <select class="form-control input-md" name="course">';
  foreach ($allquiz as $quiz) {
      $eid=$quiz['eid'];
      $course=$quiz['title'];
       echo' <option value="'.$eid.'">'.$course.'</option>'; 
  }
  echo '</select>
        
      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for=""></label>
      <div class="col-md-12"> 
        <input  type="submit" style="margin-left:10%" class="btn btn-primary" value="Manage" class="btn btn-primary" name="manage-questions"/>
      </div>
    </div>

    </fieldset>
    </form>';



}
?>