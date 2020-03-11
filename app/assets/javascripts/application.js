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
//= require_tree .
//= require jquery
//= require jquery_ujs
$( document ).ready(function() {

  let startcolor = $('#request_color').val();
  $('#request_color').removeClass();
  $('#request_color').addClass(startcolor);


$('*[data-href]').on("click",function(){
  window.location = $(this).data('href');
  return false;
});

$("td > a").on("click",function(e){
  e.stopPropagation();
});

$('#request_color').on('change', (event) =>{
  let color = $('#request_color').val();
  $('#request_color').removeClass();
  $('#request_color').addClass(color);
});

$('#request_monday').on('change', (event) =>{
  $('#monday_block').toggleClass("hidden", this.checked);
});
$('#request_tuesday').on('change', (event) =>{
  $('#tuesday_block').toggleClass("hidden", this.checked);
});
$('#request_wednesday').on('change', (event) =>{
  $('#wednesday_block').toggleClass("hidden", this.checked);
});
$('#request_thursday').on('change', (event) =>{
  $('#thursday_block').toggleClass("hidden", this.checked);
});
$('#request_friday').on('change', (event) =>{
  $('#friday_block').toggleClass("hidden", this.checked);
});
$('#request_saturday').on('change', (event) =>{
  $('#saturday_block').toggleClass("hidden", this.checked);
});
$('#request_sunday').on('change', (event) =>{
  $('#sunday_block').toggleClass("hidden", this.checked);
});


});
