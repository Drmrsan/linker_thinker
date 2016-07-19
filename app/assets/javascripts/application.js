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
//= require materialize-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function(){

	$(".button-collapse").sideNav();
	$('.modal-trigger').leanModal();

	$('.dropdown-button').dropdown({
                        inDuration: 300,
                        outDuration: 225,
                        constrain_width: true, // Does not change width of dropdown to that of the activator
                        hover: false, // Activate on hover
                        gutter: 0, // Spacing from edge
                        belowOrigin: true, // Displays dropdown below the button
                        alignment: 'left' // Displays dropdown with edge aligned to the left of button
                  	    }
                  	);

                  $('i.material-icons.search').on('click', function() {
                        $('input[type="text"]#search').toggleClass('show');
                        console.log("clicked");  
                  });

                  setTimeout(function(){
                        $('.notification').fadeOut('slow', function(){
                              $(this).remove();
                        })
                  }, 3000);

})

