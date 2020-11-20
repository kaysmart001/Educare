<?php include 'header.php'; ?>
<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Events</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Upcoming Events</li>
        </ul>
        <p class="text-lighten"></p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- events -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Upcoming Events</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          <!-- <div>
            <a href="events.php" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
          </div> -->
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
  <!-- event -->
<?php 
$sql2 = "SELECT * FROM events ORDER BY start_date";
$stmt = $pdo->prepare($sql2);
          $stmt->execute();          
          while($event = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $event_start_date = $event['start_date'];
            $event_finish_date = $event['finish_date'];
            $event_venue = $event['venue'];
            $event_description = $event['description'];
            $date = date_create($event_start_date);
            
?>
  <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card border-0 rounded-0 hover-shadow">
      <div class="card-img position-relative">
        <img class="card-img-top rounded-0" src="images/events/event-1.jpg" alt="event thumb">
        <div class="card-date"><span><?php echo date_format($date, 'd'); ?></span><br><?php echo date_format($date, 'F'); ?></div>
      </div>
      <div class="card-body">
        <!-- location -->
        <p><i class="ti-location-pin text-primary mr-2"></i><?php echo $event_venue; ?></p>
        <a href="#"><h4 class="card-title"><?php echo $event_description; ?></h4></a>
      </div>
    </div>
  </div>
<?php } ?>
  </div>
</div>
</section>
<!-- /events -->
<?php include 'footer.php'; ?>