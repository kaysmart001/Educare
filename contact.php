<?php 
$msg='';
$msgclass='';
if (filter_has_var(INPUT_POST, 'submit')) {
  $name=htmlspecialchars($_POST['name']);
  $message=htmlspecialchars($_POST['message']);
  $email=htmlspecialchars($_POST['email']);
  $subject=htmlspecialchars($_POST['subject']);

  if(!empty($name) && !empty($email) && !empty($message)){

    if(filter_var($email,FILTER_VALIDATE_EMAIL)===false){
      $msg='please use a valid email';
      $msgclass='alert-danger';
    }else{
      $toEmail='educarecenter01@gmail.com';
      $subject.="from $name";
      $body="<h2>$subject</h2>
      <h4>Name</h4><p>$name</p>
      <h4>Email</h4><p>$email</p>
      <h4>Message</h4><p>$message</p>";
      $headers="MIME-Version: 1.0" ."\r\n";
      $headers.="Content-Type:text/html;charset=UTF-8" ."\r\n";
      $headers.="From: " .$name. "<".$email.">". "\r\n";
      if(mail($toEmail,$subject,$body,$headers)){
        $msg='Your email has been sent';
        $msgclass='alert-success';
      }else{
        $msg='Your email was not sent';
        $msgclass='alert-danger';
      }
    }
  } else{
    $msg='please fill in all fields';
    $msgclass='alert-danger';
  }
}

?>
<?php include 'header.php'; ?>
<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
        </ul>
        <p class="text-lighten">Do you have any questions/suggestions? Don't worry, there aren't any dumb questions. Just fill out the form below and we'll get back to you as soon as possible.</p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- contact -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-md-8 offset-md-2">
        <div class="card">
            <div class="card-header">
            <h2 class="section-title">Contact Us</h2>
            </div>
            <div class="card-body">
                <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                  <?php if($msg!=''): ?>
                    <div class="alert <?php echo $msgclass; ?>">
                      <?php echo $msg; ?>
                    </div>
                  <?php endif; ?>
                <input type="text" class="form-control mb-3" id="name" name="name" placeholder="Your Name">
                <input type="email" class="form-control mb-3" id="mail" name="email" placeholder="Your Email">
                <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject">
                <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message"></textarea>
                <button type="submit" value="send" class="btn btn-primary" name="submit">SEND MESSAGE</button>
                </form>
            </div>
        </div> 
      </div>
    </div>
  </div>
</section>
<!-- /contact -->
<?php include 'footer.php'; ?>