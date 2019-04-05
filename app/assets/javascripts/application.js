// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


    $.noConflict();

jQuery(document).ready(function($) {

  "use strict";

  [].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
    new SelectFx(el);
  });

  jQuery('.selectpicker').selectpicker;


  

  $('.search-trigger').on('click', function(event) {
    event.preventDefault();
    event.stopPropagation();
    $('.search-trigger').parent('.header-left').addClass('open');
  });

  $('.search-close').on('click', function(event) {
    event.preventDefault();
    event.stopPropagation();
    $('.search-trigger').parent('.header-left').removeClass('open');
  });

  $('.equal-height').matchHeight({
    property: 'max-height'
  });

  // var chartsheight = $('.flotRealtime2').height();
  // $('.traffic-chart').css('height', chartsheight-122);


  // Counter Number
  $('.count').each(function () {
    $(this).prop('Counter',0).animate({
      Counter: $(this).text()
    }, {
      duration: 3000,
      easing: 'swing',
      step: function (now) {
        $(this).text(Math.ceil(now));
      }
    });
  });


   
   
  // Menu Trigger
  $('#menuToggle').on('click', function(event) {
    var windowWidth = $(window).width();       
    if (windowWidth<1010) { 
      $('body').removeClass('open'); 
      if (windowWidth<760){ 
        $('#left-panel').slideToggle(); 
      } else {
        $('#left-panel').toggleClass('open-menu');  
      } 
    } else {
      $('body').toggleClass('open');
      $('#left-panel').removeClass('open-menu');  
    } 
       
  }); 

   
  $(".menu-item-has-children.dropdown").each(function() {
    $(this).on('click', function() {
      var $temp_text = $(this).children('.dropdown-toggle').html();
      $(this).children('.sub-menu').prepend('<li class="subtitle">' + $temp_text + '</li>'); 
    });
  });


  // Load Resize 
  $(window).on("load resize", function(event) { 
    var windowWidth = $(window).width();       
    if (windowWidth<1010) {
      $('body').addClass('small-device'); 
    } else {
      $('body').removeClass('small-device');  
    } 
    
  });
  
 
});

