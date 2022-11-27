<?php
session_start();
if(isset($_POST['signin']))
{
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql ="SELECT EmailId,Password FROM tblusers WHERE EmailId=:email and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['login']=$_POST['email'];
echo "<script type='text/javascript'> document.location = 'package-list.php'; </script>";
} else{
	
	echo "<script>alert('Invalid Details');</script>";

}

}

?>

<style type="text/css">
	
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");

.container1 {
    height: 65vh
}

.card {
    width: 400px;
    border: none
}

.form-control {
    border: 2px solid #bdc1d2;
    font-size: 13px;
    height: 48px
}

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #f7bfd9;
    outline: 0;
    box-shadow: none
}

.form {
    position: relative;
    margin-bottom: 25px
}

.form a {
    position: absolute;
    right: 8px;
    bottom: 10px;
    color: #6ca0d6;
    font-size: 13px;
    text-decoration: none;
    z-index: 10;
    background-color: #fff;
    padding: 5px
}

.continue {
    height: 48px;
    font-size: 13px;
    background-color: #e91e63;
    border: none
}

.line-text {
    color: #cecece
}

.line {
    background-color: #eeeff6;
    width: 166px;
    height: 2px
}

.member a {
    color: #e91e63;
    font-size: 14px
}

.member span {
    font-size: 13px;
    font-weight: 400;
    color: #6ca0d6
}

.facebook-button {
    background-color: #39559f
}

.facebook-button:hover {
    background-color: #39559f
}

.facebook:focus {
    color: #fff;
    background-color: #4285f4;
    border-color: #4285f4;
    box-shadow: none
}

.google-button {
    background-color: #4285f4
}

.google-button:hover {
    background-color: #4285f4
}



</style>

<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-display-container container1 d-flex justify-content-center align-items-center" >
    <div class="card">
        <div class="p-3 border-bottom d-flex align-items-center justify-content-center">
            <h5>Login to Paradise Africa</h5><span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" style="color: #000" title="Close Modal">&times;</span>
        </div>
        <div class="p-3 px-4 py-4 border-bottom"> 
        	<input type="text" class="form-control mb-2" placeholder="Email/Username" />
            	<div class="form"> 
            		<input type="text" class="form-control" placeholder="Password" /> <a href="#">Forgot?</a> 
            	</div> 

            	<button class="btn btn-danger btn-block continue w3-center">Continue</button>
            	<div class="d-flex justify-content-center align-items-center mt-3 mb-3"> <span class="line"></span> <small class="px-2 line-text">OR</small> <span class="line"></span> </div> 

            	<button class="btn btn-danger btn-block continue facebook-button d-flex justify-content-start align-items-center"> <i class="fa fa-facebook ml-2"></i> <span class="ml-5 px-4">Continue with facebook</span> </button> <button class="btn btn-danger btn-block continue google-button d-flex justify-content-start align-items-center"> <i class="fa fa-google ml-2"></i> <span class="ml-5 px-4">Continue with Google</span> </button>

            </div>
        </div>
        
    </div>
</div>

    </div>
</div>

