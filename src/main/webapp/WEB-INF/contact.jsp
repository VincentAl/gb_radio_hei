<!DOCTYPE html>
<html manifest="site.manifest">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta http-equiv="cleartype" content="on">
    	<meta name="MobileOptimized" content="320">
    	<meta name="HandheldFriendly" content="True">
    	<meta name="apple-mobile-web-app-capable" content="yes">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    	<meta name="apple-mobile-web-app-status-bar-style" content="black" />

		<title>GB Radio</title>

		<link rel="icon" type="image/png" href="img/logo_GB.png" />
		<link rel="apple-touch-icon" href="img/icone_GB.png" />
		<link rel="apple-touch-startup-image" href="img/chargement.png" />

		<link rel="stylesheet" href="css/Style.css"> 
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.css" />
		<link type="text/css" rel="stylesheet" href="css/addons/jquery.mmenu.dragopen.css" />
		<link href="jPlayer-2.9.2/dist/skin/blue.monday/css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
	
		<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>

		<script type="text/javascript" src="js/main.js"></script>
		<script type="text/javascript" src="js/jquery.mmenu.min.js"></script>
		<script type="text/javascript" src="js/addons/jquery.mmenu.dragopen.min.js"></script>
		<script type="text/javascript" src="js/addons/jquery.mmenu.fixedelements.min.js"></script>
		
		<script type="text/javascript" src="jPlayer-2.9.2/dist/jplayer/jquery.jplayer.min.js"></script>
		
	</head>
	
	<!--  Corps de la page --> 
	
	<body>

		<%@include file="menu.jsp" %>

		<!--  HEADER -->
		
		<div id="page">
			<div class="header Fixed">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
						<a href="#menu"><img id="logo_menu" src="img/menu.png" alt="logo_menu"></a>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10" id="header_article"><h2>Nous Contacter</h2></div>
				</div>
			</div>
								
			<section class="container listview">
				
				<a href="https://www.facebook.com/GbRadioHEI?fref=pb&hc_location=profile_browser">
					<div class="section">
						<div class="col-xs-3">
							<img class="img_contact" src="img/icone_fb.png" alt="logo_sd">
						</div>
						<div class="col-xs-7 rubrique_menu">
							<h3>FACEBOOK</h3>
						</div>
					</div>
				</a>

				<a href="https://twitter.com/gbradiohei">
					<div class="section">
						<div class="col-xs-3">
							<img class="img_contact" src="img/icone_twitter.png" alt="logo_sd">
						</div>
						<div class="col-xs-7 rubrique_menu">
							<h3>TWITTER</h3>
						</div>
					</div>
				</a>

				<a href="mailto:gbradio@hei.fr?&subject=Prise de contact GB Radio">
					<div class="section">
						<div class="col-xs-3">
							<img class="img_contact" src="img/icone_mail.png" alt="logo_sd">
						</div>
						<div class="col-xs-7 rubrique_menu">
							<h3>MAIL</h3>
						</div>
					</div>
				</a>
	
			</section>
				
			<%@ include file="footer.jsp" %>
		</div>
	</body>
</html>