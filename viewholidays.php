<?php require('includes/config.php'); 

$stmt = $dbh->prepare('SELECT packageid, packagetitle, packagedesc, itinerary, inclusion, packageimg, exclusion, toursummary FROM holidays WHERE packageid = :packageid');
$stmt->execute(array(':packageid' => $_GET['id']));
$row = $stmt->fetch();

//if post does not exists redirect user.
if($row['packageid'] == ''){
	header('Location: ./');
	exit;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
<title><?php echo $row['packagetitle'];?></title>

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

<style>
    div.tab button.active {
  background-color: #F44336;
  color: #FFFFFF;
  font-weight: 900;
}
</style>


</head>

<body onload="document.getElementById('defaultOpen').click();">

<body>

<?php include('includes/header.php');?>

<!--<div class="breadcrumb-area">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="breadcrumb-wrap">
<h2>Kenya</h2>
<ul class="breadcrumb-links">
<li>
<a href="index.html">Home</a>
<i class="bx bx-chevron-right"></i>
</li>
<li>Kenya Destinations</li>
</ul>
</div>
</div>
</div>
</div>
</div>-->


<div class="package-area pt-120">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="section-head pb-45">
<h3><b><?php echo $row['packagetitle'];?></b></h3>
<p><?php echo $row['packagedesc'];?></p>
</div>
</div>
</div>

<?php include('includes/form.php');?>

<?php include('includes/footer.php');?>

<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/typed.js"></script>

<script src="assets/js/main.js"></script>

<script type="text/javascript">
  
function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", ""); 
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
document.getElementById("defaultOpen").click();

var currentDateTime = new Date();
var year = currentDateTime.getFullYear();
var month = (currentDateTime.getMonth() + 1);
var date = (currentDateTime.getDate() + 1);

if(date < 10) {
  date = '0' + date;
}
if(month < 10) {
  month = '0' + month;
}

var dateTomorrow = year + "-" + month + "-" + date;
var checkinElem = document.querySelector("#checkin-date");
var checkoutElem = document.querySelector("#checkout-date");

checkinElem.setAttribute("min", dateTomorrow);

checkinElem.onchange = function () {
    checkoutElem.setAttribute("min", this.value);
}


</script>
</body>

</html>