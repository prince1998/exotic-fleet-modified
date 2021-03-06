<?php
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Feedback</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">


    <!-- Bootstrap CDN Custom-->
    <!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet"> -->


    <!-- Font Awesome CDN Custom -->
    <!-- <script src="https://kit.fontawesome.com/f7b83284dd.js" crossorigin="anonymous"></script> -->





    <!-- External Stylesheet-->

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/green.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
    <link href="assets/css/lightbox.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/rateit.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

    <!-- Demo Purpose Only. Should be removed in production -->
    <link rel="stylesheet" href="assets/css/config.css">

    <link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
    <link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
    <link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
    <link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
    <link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/faq.css">

</head>

<body class="cnt-home">

    <header class="header-style-1">
    <?php include('includes/top-header.php');?>
    <?php include('includes/main-header.php');?>
    <?php include('includes/menu-bar-feedback.php');?>
    </header>


    <?php

    if(isset($_POST['create'])){


        $feedback= $_POST[('feedback')];

        $sql = mysqli_query($con,"UPDATE users SET feedback = '$feedback' WHERE name = Priyansh Ramnani");
        $stmtinsert = $con->prepare($sql);

        // if($result){
        //     echo "<script>alert('Sent Successfully')</script>";
        // }
        // else{
        //     echo "<script>alert('Cannot connect to the Server')</script>";
        // }

    }

	?>



    	<form action="feedback.php" method="post" name = "register" >
    		<div class="container">
                <div class = "row">
                    <div class = "col-sm-12">
                        <br />
    					<h3>Feedback</h3>
    					<textarea name = "feedback" rows = "4" cols = "50" required></textarea>
                        <br />
                        <input class = "btn btn-primary" type="submit" name="create" value="Send" />
                    </div>
                </div>
            </div>
        </form>

        <?php include('includes/footer.php');?>
        <script src="assets/js/jquery-1.11.1.min.js"></script>

    	<script src="assets/js/bootstrap.min.js"></script>

    	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
    	<script src="assets/js/owl.carousel.min.js"></script>

    	<script src="assets/js/echo.min.js"></script>
    	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    	<script src="assets/js/bootstrap-slider.min.js"></script>
        <script src="assets/js/jquery.rateit.min.js"></script>
        <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
    	<script src="assets/js/scripts.js"></script>

    	<!-- For demo purposes – can be removed on production -->

    	<script src="switchstylesheet/switchstylesheet.js"></script>

    	<script>
    		$(document).ready(function(){
    			$(".changecolor").switchstylesheet( { seperator:"color"} );
    			$('.show-theme-options').click(function(){
    				$(this).parent().toggleClass('open');
    				return false;
    			});
    		});

    		$(window).bind("load", function() {
    		   $('.show-theme-options').delay(2000).trigger('click');
    		});
    	</script>
    	<!-- For demo purposes – can be removed on production : End -->


</body>

</html>
