<?php
session_start();
error_reporting(0);
include('includes/config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Frequently Asked Questions</title>
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
    <?php include('includes/menu-bar-faq.php');?>
    </header>

    <div class="container">
        <h2>Frequently Asked Questions</h2>
        <div class="accordion">
            <!-- First accordion item -->
            <div class="accordion-item">
                <a class = "accordion-anchor" href="#">How to buy a product?</a>
                <div class="content">
                    <p>
                        You can only buy one car at a time. When you select the product you wish to buy with desired specifications and colour, you would be asked to pay 20% of the price of product which you want to purchase. Once that's done we'll
                        send a person to collect your documents from your doorstep. After verification of documents, you would be asked to initiate the entire payment. Once the payment is processed from our end, the delivery procedure would
                        initiate.
                    </p>
                </div>
            </div>

            <!-- Second accordion item -->
            <div class="accordion-item">
                <a class = "accordion-anchor" href="#">How to cancel your booking?</a>
                <div class="content">
                    <p>
                        If you wish to cancel your booking, you would be required to contact us and let us know via email or by call. Once your request is processed 5% of the booking amount would be deducted (Processing Fees) and the remaining
                        amount would be given to you. This amount would be transferred to your account.
                    </p>
                </div>
            </div>

            <!-- Third accordion item -->
            <div class="accordion-item">
                <a class = "accordion-anchor" href="#">How to know status of refund?

                </a>
                <div class="content">
                    <p>
                        You can call us at <a class = "contact" href="tel:+919167167510" >9167167510</a> to know status of your refund.
                    </p>
                </div>
            </div>

            <!-- Fourth accordion item -->
            <div class="accordion-item">
                <a class = "accordion-anchor" href="#">Have a query?</a>
                <div class="content">
                    <p>
                        You can <a href="mailto:yashshete@exoticfleet.com,
priyanshramnani@exoticfleet.com,
siddharth@exotixfleet.com" class="contact" >
                            email us
                        </a>
                        or
                        <a class="contact" href="tel:1800 98316789">call us.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="accordion.js"></script>
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
