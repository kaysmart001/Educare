<?php 
if (isset($_POST['feed']) && !empty($_POST['name']) && !empty($_POST['subject']) && !empty($_POST['email']) && !empty($_POST['feedback'])) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $id=uniqid();
  $date=date("Y-m-d");
  $time=date("h:i:sa");
  $feedback = $_POST['feedback'];
  $q=mysqli_query($conn,"INSERT INTO feedback VALUES  ('$id' , '$name', '$email' , '$subject', '$feedback' , '$date' , '$time')")or die ("Error 498");
  header("location:user_dashboard.php?q=feed&feedback=Thank you for your valuable feedback");
}
?>
<?php if(@$_GET['q']== 'feed'): ?>
  
    <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6" style="background-image:url(assets/images/bg1.jpg); min-height:430px;">
    <h2 align="center" style="font-family:'typo'; color:#000066">FEEDBACK/REPORT A PROBLEM</h2>
    <div style="font-size:14px">
    You can send us your feedback through e-mail on the following e-mail id:<br />
    <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
    <a href="mailto:educarecenter01@gmail.com" style="color:#000000">educarecenter01@gmail.com</a><br /><br />
    </div><div class="col-md-1"></div>
    </div>
    <p>Or you can directly submit your feedback by filling the entries below:-</p>
    <form role="form"  method="post" action="user_dashboard.php">
      <?php echo isset($_GET['feedback'])? "<div class='alert alert-success'>".$_GET['feedback']."</div>":''; ?>
    <div class="row">
    <div class="col-md-3"><b>Name:</b></div>
    <div class="col-md-9">
    <!-- Text input-->
    <div class="form-group">
      <input id="name" name="name" placeholder="Enter your name" class="form-control input-md" type="text">
    </div>
    </div>
    </div><!--End of row-->

    <div class="row">
    <div class="col-md-3"><b>Subject:</b></div>
    <div class="col-md-9">
    <!-- Text input-->
    <div class="form-group">    
       <input id="name" name="subject" placeholder="Enter subject" class="form-control input-md" type="text">    
    </div>
    </div>
    </div><!--End of row-->

    <div class="row">
    <div class="col-md-3"><b>E-Mail address:</b></div>
    <div class="col-md-9">
    <!-- Text input-->
    <div class="form-group">
      <input id="email" name="email" placeholder="Enter your email address" class="form-control input-md" type="email">    
     </div>
    </div>
    </div><!--End of row-->

    <div class="form-group"> 
    <textarea rows="5" cols="8" name="feedback" class="form-control" placeholder="Write feedback here..."></textarea>
    </div>
    <div class="form-group" align="center">
    <input type="submit" name="feed" value="Submit" class="btn btn-primary rounded" />
    </div>
    </form>
    </div><!--col-md-6 end-->
    <div class="col-md-3"></div>
    </div>
    </div>
  <?php endif; ?>