<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Paradise Africa Expeditions | Kenya</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/png" href="">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="assets/css/animate.css">

<link rel="stylesheet" href="assets/css/magnific-popup.css">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/boxicons.min.css">

<link rel="stylesheet" href="assets/font/flaticon.css">

<link rel="stylesheet" href="assets/css/owl.carousel.min.css">

<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>

<?php include('includes/header.php');?>


<div class="breadcrumb-area" style="background-image: url(assets/images/maasai11.jpg); background-repeat: no-repeat; background-size: cover; background-position: center; background-attachment: fixed;">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="breadcrumb-wrap">
<h2>Kenya Safaris</h2>
<ul class="breadcrumb-links">
<li>
<a href="index.html">Home</a>
<i class="bx bx-chevron-right"></i>
</li>
<li>Kenya Safaris</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<div class="package-area pt-120">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="section-head pb-45">
<h2>Choose Your best Package</h2>
</div>
</div>
</div>
</div>
</div>

<div style="width: 100%;" class="w3-hide-small">
<div style=" width: 90%; margin: auto;">
<?php $sql = "SELECT * from kenyapackage order by rand() limit 15";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
  <a href="viewkenya.php?id=<?php echo htmlentities($result->packageid);?>">
	<div class="w3-card-4" style="width:30%; display: inline-block; margin: 1.5%; height: auto;"  >
    	<img src="admin/pacakgeimages/<?php echo htmlentities($result->packageimg);?>" style="width: 100%; height: auto; max-height: 220px;" class="img-fluid" alt="" >
		<div class="w3-container w3-center">
      		<h5 style="margin: 5% 0.3%; "><?php echo htmlentities($result->packagetitle);?></h5>
    	</div>
  	</div>

  </a>
  
<?php }} ?>

</div>

</div>

<div style="width: 100%;" class="w3-hide-medium w3 w3-hide-large">
<div style=" width: 96%; margin: auto;">
<?php $sql = "SELECT * from kenyapackage order by rand() limit 15";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
    <a href="viewkenya.php?id=<?php echo htmlentities($result->packageid);?>">
	<div class="w3-card-4" style="width:96%; display: inline-block; margin: 1.5%; height: auto;"  >
    	<img src="admin/pacakgeimages/<?php echo htmlentities($result->packageimg);?>" style="width: 100%; height: auto; max-height: 220px;" class="img-fluid" alt="" >
		<div class="w3-container w3-center">
      		<h5 style="margin: 5% 0.3%; "><?php echo htmlentities($result->packagetitle);?></h5>
    	</div>
  	</div>
    </a>
  

<?php }} ?>

</div>
</div>

<?php include('includes/footer.php');?>

<!--
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="3daysmasaimara.html">3 Days Maasai Mara</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="swarasafari.html">4 Days Swara Safari</span></a></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="twigasafari.html">5 Days Twiga safari</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="tembosafari.html">6 Days Tembo Safari</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
 <div class="package-details">
<div class="package-info">
<h5><span><a href="cheetahsafari.html">7 Days cheetah Safari the Lakes</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="coastaltrek.html">8 Days Coastal Trek</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="lionsafari.html">9 Days African Lion Safari</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="riftvalley.html">10 Great Rift Valley Lakes Safari</a></span></h5>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="SirimonOut.html">Mt. Kenya Climbing</a></span></h5>
</div>
<h3 href="package-details.html">4 Days Sirimon Out Sirimon</h3>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="sirimonoutchogoria.html">Mt. Kenya Climbing</a></span></h5>
</div>
<h3>5 Days Sirimon Out Chogoria</h3>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-sm-6">
<div class="package-card">
<div class="package-thumb">
<img src="" alt="" class="img-fluid">
</div>
<div class="package-details">
<div class="package-info">
<h5><span><a href="narumoru.html">Mt. Kenya Climbing</a></span></h5>
</div>
<h3>7 Days Sirimon Out Naru Moru Route</h3>
</div>
</div>
</div>
</div>-->

<!--<div class="row">
<div class="col-lg-12">
<div class="pagination mt-30">
<a href="#"><i class="bx bx-chevron-left"></i></a>
<a href="#" class="active">1</a>
<a href="#">2</a>
<a href="#">3</a>
<a href="#">4</a>
<a href="#"><i class="bx bx-chevron-right"></i></a>
</div>
</div>
</div>
</div>
</div>


<div class="newsletter-area pt-120">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="newsletter-wrapper">
<h2>Subscribe To Our Newsletter
For Latest Update</h2>
 <form>
<div class="input-group newsletter-input">
<input type="text" class="form-control" placeholder="Enter Your Email" aria-label="Recipient's username" aria-describedby="button-addon2">
<button class="btn btn-outline-secondary" type="button" id="button-addon2">Subscribe</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>


<div class="footer-area">
<div class="container">
<div class="row">
<div class="col-lg-4 col-md-12">
<div class="footer-info">
<div class="footer-logo">
<img src="assets/images/logo-2.png" alt="" class="img-fluid">
</div>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquid maxime aut ut voluptate
dolorum nisi ducimus ratione</p>
<div class="footer-social-icons">
<h5>Follow Us:</h5>
<ul>
<li><a href="#"><i class='bx bxl-facebook'></i></a></li>
<li><a href="#"><i class='bx bxl-instagram'></i></a></li>
<li><a href="#"><i class='bx bxl-twitter'></i></a></li>
<li><a href="#"><i class='bx bxl-dribbble'></i></a></li>
</ul>
</div>
</div>
</div>
<div class="col-lg-8 col-md-12">
<div class="row">
<div class="col-lg-5 col-md-5 col-sm-7">
<div class="footer-links">
<h5 class="widget-title">Contact us</h5>
<div class="contact-box">
<span><i class="bx bx-phone"></i></span>
<div>
<a href="tel:+01852-1265122">+01852-1265122</a>
<a href="tel:+01852-1265122">+01852-1265122</a>
</div>
</div>
<div class="contact-box">
<span><i class="bx bx-mail-send"></i></span>
<div>
<a href="https://demo.egenslab.com/cdn-cgi/l/email-protection#c2abaca4ad82a7baa3afb2aea7eca1adaf"><span class="__cf_email__" data-cfemail="751c1b131a35100d14180519105b161a18">[email&#160;protected]</span></a>
<a href="https://demo.egenslab.com/cdn-cgi/l/email-protection#e5969095958a9791a5809d8488958980cb868a88"><span class="__cf_email__" data-cfemail="fc8f898c8c938e88bc99849d918c9099d29f9391">[email&#160;protected]</span></a>
</div>
</div>
<div class="contact-box">
<span><i class="bx bx-location-plus"></i></span>
<div>
<a href="#">2752 Willison Street <br>
Eagan, United State</a>
</div>
</div>
</div>
</div>
<div class="col-lg-3 col-md-3 col-sm-5">
<div class="footer-links">
<h5 class="widget-title">support</h5>
<div class="category-list">
<ul>
<li><a href="contact.html">Contact us</a></li>
<li><a href="about.html">About us</a></li>
 <li><a href="#">Services</a></li>
<li><a href="blog.html">our Blogs</a></li>
<li><a href="#">terms and conditions</a></li>
</ul>
</div>
</div>
</div>
<div class="col-lg-4 col-md-4">
<div class="footer-links payment-links">
<h5 class="widget-title">We Accepts:</h5>
<div class="payment-cards">
<img src="assets/images/payment/payment-card-2.png" alt="" class="img-fluid">
<img src="assets/images/payment/payment-card-1.png" alt="" class="img-fluid">
<img src="assets/images/payment/payment-card-3.png" alt="" class="img-fluid">
<img src="assets/images/payment/payment-card-4.png" alt="" class="img-fluid">
<img src="assets/images/payment/payment-card-5.png" alt="" class="img-fluid">
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="copyrigth-area">
<p>Copyright 2021 <a href="#">TourX</a> | Design By <a href="#">Egens Lab</a></p>
</div>
</div>
</div>
</div>
</div>-->


<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/typed.js"></script>

<script src="assets/js/main.js"></script>
</body>

</html>