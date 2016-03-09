// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui/sortable
//= require jquery-ui/effect-highlight
//= require turbolinks
//= require nprogress
//= require nprogress-turbolinks
//= require fancybox
//= require lazyload
//= require update_projects_row_order

$(document).ready(function(){
	
	// initiate fancybox for videos
	$(".video-popup").fancybox({
		'width'				: '70%',
		'height'			: '80%',
		'autoScale'			: false,
	//	'transitionIn'		: 'elastic',
	//	'transitionOut'		: 'none',
		'type'				: 'iframe',
		closeClick : true,
		helpers : {
	    	overlay : {
	    		locked : false
			}
	    }     
	});
	
	if($(window).width() > 481){
    	$('.project').hover(function(){
        	$(this).find('.info-wrapper').stop().slideDown('100');
        },
        function(){
        	$(this).find('.info-wrapper').stop().slideUp('100');
        });
    }
	
	$(".lazy").lazyload({
		effect : "fadeIn"
	});
	
});