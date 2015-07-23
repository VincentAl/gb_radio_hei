$(document).ready(function(){
	
	/* Fonction pour renvoyer le flux audio de la radio vers le player */ 

	var stream = {
		mp3: "http://patriarch.fr:8000/streamhd.mp3"
	},
	ready = false;

	$("#jquery_jplayer_1").jPlayer({
		ready: function (event) {
			ready = true;
			$(this).jPlayer("setMedia", stream);
		},
		pause: function() {
			$(this).jPlayer("clearMedia");
		},
		error: function(event) {
			if(ready && event.jPlayer.error.type === $.jPlayer.error.URL_NOT_SET) {
				// Setup the media stream again and play it.
				$(this).jPlayer("setMedia", stream).jPlayer("play");
			}
		},
		swfPath: "../../dist/jplayer",
		supplied: "mp3",
		preload: "none",
		wmode: "window",
		useStateClassSkin: true,
		autoBlur: false,
		keyEnabled: true
	});

});

/*  Fonction pour permettre l'affichage du Menu lorsque l'on clique sur l'id #menu */

$(function() {
				var $menu = $('nav#menu'),
					$html = $('html, body');

				$menu.mmenu({
					dragOpen: true
				});					
				
			});