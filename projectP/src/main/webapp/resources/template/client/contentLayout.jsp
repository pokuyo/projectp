<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
<link rel="shortcut icon" href="../image/icon.png" />
<link rel="apple-touch-icon" href="../image/icon.png" />
<!--IE8이하 적용/--> 
<!--[if lt IE 9]>
	<script src="./js/html5shiv.js"></script>
<![endif]--> 

<title><tiles:getAsString name="title" /></title>

<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/resources/include/assets/css/normalize.css">
<link rel="stylesheet" href="/resources/include/assets/css/main.css">
<link rel="stylesheet" href="/resources/include/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/include/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/include/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/include/assets/css/responsive.css">
<link rel="stylesheet" href="/resources/include/assets/css/style.css">

</head>
<body>

<!-- Start Header Section -->
	<tiles:insertAttribute name="header" />
<!-- End Header Section -->

<!-- start body Section -->
<section id="abt_sec">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs12 ">
				<tiles:insertAttribute name="body" />		
			</div>		
		</div>
	</div>
</section>
<!-- End body Section -->

<!-- Start Header Section -->
	<tiles:insertAttribute name="footer" />
<!-- Footer Header Section -->

</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

<script src="/resources/include/assets/js/isotope.pkgd.min.js"></script>
<script src="/resources/include/assets/js/bootstrap.min.js"></script>
<script src="/resources/include/assets/js/appear.js"></script>
<script src="/resources/include/assets/js/jquery.counterup.min.js"></script>
<script src="/resources/include/assets/js/waypoints.min.js"></script>
<script src="/resources/include/assets/js/owl.carousel.min.js"></script>
<script src="/resources/include/assets/js/showHide.js"></script>
<script src="/resources/include/assets/js/jquery.nicescroll.min.js"></script>
<script src="/resources/include/assets/js/jquery.easing.min.js"></script>
<script src="/resources/include/assets/js/scrolling-nav.js"></script>
<script src="/resources/include/assets/js/plugins.js"></script>

<script src="/resources/include/assets/js/main.js"></script>

<script src="/resources/include/assets/js/showHide.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(){
   $('.show_hide').showHide({			 
		speed: 1000,  // speed you want the toggle to happen	
		easing: '',  // the animation effect you want. Remove this line if you dont want an effect and if you haven't included jQuery UI
		changeText: 1, // if you dont want the button text to change, set this to 0
		showText: 'View',// the button text to show when a div is closed
		hideText: 'Close' // the button text to show when a div is open	 
	}); 
});

</script>
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>

<script>

  //Hide Overflow of Body on DOM Ready //
$(document).ready(function(){
    $("body").css("overflow", "hidden");
});

// Show Overflow of Body when Everything has Loaded 
$(window).load(function(){
    $("body").css("overflow", "visible");        
    var nice=$('html').niceScroll({
	cursorborder:"5",
	cursorcolor:"#00AFF0",
	cursorwidth:"3px",
	boxzoom:true, 
	autohidemode:true
	});

});
</script>
</html>