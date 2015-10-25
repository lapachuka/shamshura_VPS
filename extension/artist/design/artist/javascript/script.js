//Get the menu width and set the menu divider width
$(document).ready(function() {
	var headerMenuWidth = $(".sf-menu").css("width");
	//$(".header-menu-divider").css("width", parseInt(headerMenuWidth));
});

// hover fade
$(document).ready(function() {
	//prevent to load the fade effect on IE8 (poor quality)
	//add the class "fade-hover" to any element you want to add the Fade effect
	if (!($.browser.msie  && parseInt($.browser.version) < 9)) {
		$(".fade-hover, .input-submit, .button, .bigbutton, .banner-widget a, #posts-combo a, .social-icon, .featured-image img, .post h2, .post a.featured-image img").hover(
			function() {
				$(this).fadeTo(150, 0.7);
			},
			function() {
				$(this).fadeTo(450, 1);
			}
		);
	}
});

//porfolio filter
$(document).ready(function() {
	$(".ul-portfolio-categories a").click(function() {
		$(this).css("outline","none");
		$(".ul-portfolio-categories .selected").removeClass("selected");
		$(this).parent().addClass("selected");

		var filterVal = $(this).attr('data-value').toLowerCase().replace(" ","-").replace("`","-");

		if(filterVal == "all") {
			$('#portfolio li').show();
	
		}else{
			$('#portfolio li').hide();
			$('#portfolio li.'+filterVal).fadeIn();

		}
		
		return event.preventDefault();
		//return false;
	});
});
