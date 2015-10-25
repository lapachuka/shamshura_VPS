window.log = function(){
  log.history = log.history || [];  
  log.history.push(arguments);
  arguments.callee = arguments.callee.caller;  
  if(this.console) console.log( Array.prototype.slice.call(arguments) );
};
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();)b[a]=b[a]||c})(window.console=window.console||{});


/*
CSS Browser Selector v0.4.0 (Nov 02, 2010)
Rafael Lima (http://rafael.adm.br)
http://rafael.adm.br/css_browser_selector
License: http://creativecommons.org/licenses/by/2.5/
Contributors: http://rafael.adm.br/css_browser_selector#contributors
*/
function css_browser_selector(u){var ua=u.toLowerCase(),is=function(t){return ua.indexOf(t)>-1},g='gecko',w='webkit',s='safari',o='opera',m='mobile',h=document.documentElement,b=[(!(/opera|webtv/i.test(ua))&&/msie\s(\d)/.test(ua))?('ie ie'+RegExp.$1):is('firefox/2')?g+' ff2':is('firefox/3.5')?g+' ff3 ff3_5':is('firefox/3.6')?g+' ff3 ff3_6':is('firefox/3')?g+' ff3':is('gecko/')?g:is('opera')?o+(/version\/(\d+)/.test(ua)?' '+o+RegExp.$1:(/opera(\s|\/)(\d+)/.test(ua)?' '+o+RegExp.$2:'')):is('konqueror')?'konqueror':is('blackberry')?m+' blackberry':is('android')?m+' android':is('chrome')?w+' chrome':is('iron')?w+' iron':is('applewebkit/')?w+' '+s+(/version\/(\d+)/.test(ua)?' '+s+RegExp.$1:''):is('mozilla/')?g:'',is('j2me')?m+' j2me':is('iphone')?m+' iphone':is('ipod')?m+' ipod':is('ipad')?m+' ipad':is('mac')?'mac':is('darwin')?'mac':is('webtv')?'webtv':is('win')?'win'+(is('windows nt 6.0')?' vista':''):is('freebsd')?'freebsd':(is('x11')||is('linux'))?'linux':'','js']; c = b.join(' '); h.className += ' '+c; return c;}; css_browser_selector(navigator.userAgent);

//initialize prettyPhoto
$(document).ready(function(){
	$("a[data-rel='prettyPhoto']").prettyPhoto({
		slideshow:5000, 
		autoplay_slideshow:true
	});	
});

//initialize Tweet
$(document).ready(function(){
    $("#tweet").tweet({
        username: "meydjer",
//        join_text: "auto",
//        avatar_size: 32,
        count: 2,
//        auto_join_text_default: "we said,", 
//        auto_join_text_ed: "we",
//        auto_join_text_ing: "we were",
//        auto_join_text_reply: "we replied to",
//        auto_join_text_url: "we were checking out",
//        loading_text: "loading tweets..."
    });
});

//initialize Nivo Slider
$(document).ready(function() {
	$('#nivo-slider').nivoSlider({
	        effect:'fade', // Specify sets like: 'fold,fade,sliceDown'
	        slices:15, // For slice animations
	        boxCols: 8, // For box animations
	        boxRows: 4, // For box animations
	        animSpeed:500, // Slide transition speed
	        pauseTime:5000, // How long each slide will show
	        startSlide:0, // Set starting Slide (0 index)
	        directionNav:true, // Next & Prev navigation
	        directionNavHide:false, // Only show on hover
	        controlNav:false, // 1,2,3... navigation
	        controlNavThumbs:false, // Use thumbnails for Control Nav
	        controlNavThumbsFromRel:false, // Use image rel for thumbs
	        controlNavThumbsSearch: '.jpg', // Replace this with...
	        controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
	        keyboardNav:true, // Use left & right arrows
	        pauseOnHover:true, // Stop animation while hovering
	        manualAdvance:false, // Force manual transitions
	        captionOpacity:1, // Universal caption opacity
	        prevText: '<span>&nbsp;</span>', // Prev directionNav text
	        nextText: '<span>&nbsp;</span>', // Next directionNav text
	        beforeChange: function(){}, // Triggers before a slide transition
	        afterChange: function(){}, // Triggers after a slide transition
	        slideshowEnd: function(){}, // Triggers after all slides have been shown
	        lastSlide: function(){}, // Triggers when last slide is shown
	        afterLoad: function(){} // Triggers when slider has loaded
	    });
});

// initialise Superfish 
$(document).ready(function() { 
    $('.sf-menu').superfish({ 
        delay:       700,                            // one second delay on mouseout 
        animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation 
        speed:       'fast',                          // faster animation speed
        autoArrows:  false,                           // disable generation of arrow mark-up 
        dropShadows: false                            // disable drop shadows 
    }); 
  /*hack for a bug in Chrome with the background when the dropdown is animated*/
	if(navigator.userAgent.toLowerCase().indexOf('chrome') > -1) {
		$('.sf-menu').superfish({ 
		    delay:       700,
		    animation:   {opacity:'show',height:'show'},
		    speed:       0,
		    autoArrows:  false,
		    dropShadows: false
		}); 
	}
});