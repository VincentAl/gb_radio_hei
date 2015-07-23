<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
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

		
		
		<nav id="menu"></nav>

		<!--  HEADER --> 
		
		<div id="page">
			<div class="header Fixed">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
						<a href="listeThemes?type_link=${post.type.type_link}"><img id="fleche_retour" src="img/gauche.png" alt="fleche_retour"></a>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10" id="header_article"><h2>${post.type.theme}</h2></div>
					
					
				</div>
			</div>
								
			<section class="container listview">
			
				<div class="col-xs-12 article">
					<img class="photo_article" src="${post.link}" alt="photo_article">
				</div>
				
						
				
				<div class="col-xs-12 article" id="${post.id}">
					<h4>${post.title}</h4>			
				</div>
				<div class="col-xs-12 article">
					<p>${post.body}</p>
				</div>		
	
				<div class="col-xs-12 article">
					${post.soundlink}
				</div>				
			</section>
		
		<footer class="footer Fixed">
			<div class="col-xs-5" id="direct">
				<h2>EN DIRECT</h2>
			</div>
			<div class="col-xs-7 player">
				<div id="jquery_jplayer_1" class="jp-jplayer"></div>
				<div id="jp_container_1" class="jp-audio-stream" role="application" arialabel="media player">
					<div class="jp-type-single">
						<div class="jp-gui jp-interface">
							<div class="jp-controls">
								<button class="jp-play" role="button" tabindex="0">play</button>
							</div>
							<div class="jp-volume-controls">
								<button class="jp-mute" role="button" tabindex="0">mute</button>
								<button class="jp-volume-max" role="button" tabindex="0">max volume</button>
									<div class="jp-volume-bar">
										<div class="jp-volume-bar-value"></div>
									</div>
							</div>
						</div>
						<div class="jp-no-solution">
							<span>Update Required</span>
							To play the media you will need to either update your browser to a recent version or update your 
							<a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
						</div>
					</div>
				</div>
			</div>
		</footer>
		
		
		</div>
	</body>
</html>