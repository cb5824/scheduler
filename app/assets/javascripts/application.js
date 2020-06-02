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
var last_clicked;
$( document ).ready(function() {

  let startcolor = $('#request_color').val();
  $('#request_color').removeClass();
  $('#request_color').addClass(startcolor);


// $('*[data-href]').on("click",function(){
//   window.location = $(this).data('href');
//   return false;
// });

$("td > a").on("click",function(e){
  e.stopPropagation();
});

$(".notes_tab").on("click", function(){
  $( ".notes_tab" ).each(function() {
    $( this ).removeClass( "active" );
    $( this ).addClass( "inactive" );
  });
  this.classList.remove("inactive");
  this.classList.add("active");
  $(event.target.dataset.daytable).find(".notes_content").each(function(){
    $(this).addClass("hidden");
  });

  $(event.target.dataset.daytable).find(event.target.dataset.notetype).each(function(){
    $(this).removeClass("hidden");
  });
});

$(".daytab").on("click", function(){
  $(".superoverlay").css({height: "0%"});
  $('#divOverlay').hide();
  $( ".daytab" ).each(function() {
    $( this ).removeClass( "active" );
    $( this ).addClass( "inactive" );
  });
  this.classList.remove("inactive");
  this.classList.add("active");

  $( ".displaytable" ).each(function() {
    $( this ).addClass( "hidden" );
  });

  tab = this.dataset.displaytab;
  if (tab === "week") {
    $("#weekly_table")[0].classList.remove("hidden");
  }  else if (tab === "mon") {
    $("#monday_table")[0].classList.remove("hidden");
  }  else if (tab === "tue") {
    $("#tuesday_table")[0].classList.remove("hidden");
  }  else if (tab === "wed") {
    $("#wednesday_table")[0].classList.remove("hidden");
  }  else if (tab === "thu") {
    $("#thursday_table")[0].classList.remove("hidden");
  }  else if (tab === "fri") {
    $("#friday_table")[0].classList.remove("hidden");
  }  else if (tab === "sat") {
    $("#saturday_table")[0].classList.remove("hidden");
  }  else if (tab === "sun") {
    $("#sunday_table")[0].classList.remove("hidden");
  }

});

$(".copy_day").on("click", function(){
    to_day = event.target.dataset.to;
    from_day = event.target.dataset.from;

    start_time = null;
    end_time = null;
    cp1 = null;
    cp2 = null;
    mp1 = "false";
    mp2 = "false";
    mt1 = "false";
    mt2 = "false";
    mt3 = "false";
    mt4 = "false";
    other = "false";
    taw = "false";
    formb = "false";
    formc = "false";
    tandt = "false";
    inacc_track = "false";
    single = "false";
    multi = "false";
    primary = null;
    secondary1 = null;
    secondary2 = null;
    secondary3 = null;
    secondary4 = null;
    secondary5 = null;

    if (from_day == "mon") {

      start_time = $("#request_monday_hash_start_time")[0].value;
      end_time = $("#request_monday_hash_end_time")[0].value;
      cp1 = $("#request_monday_hash_cp1")[0].value;
      cp2 = $("#request_monday_hash_cp2")[0].value;
      mp1 = $("#request_monday_hash_mp1")[0].value;
      mp2 = $("#request_monday_hash_mp2")[0].value;
      if ($("#request_monday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_monday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_monday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_monday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_monday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_monday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_monday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_monday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_monday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_monday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_monday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_monday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_monday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_monday_hash_worker_primary")[0].value;
      secondary1 = $("#request_monday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_monday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_monday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_monday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_monday_hash_worker_secondary5")[0].value;

      b_time = $("#request_monday_hash_b_time")[0].value;
      b_location = $("#request_monday_hash_b_location")[0].value;
      b_name_number = $("#request_monday_hash_b_name_number")[0].value;

    } else if  (from_day == "tue") {
      start_time = $("#request_tuesday_hash_start_time")[0].value;
      end_time = $("#request_tuesday_hash_end_time")[0].value;
      cp1 = $("#request_tuesday_hash_cp1")[0].value;
      cp2 = $("#request_tuesday_hash_cp2")[0].value;
      mp1 = $("#request_tuesday_hash_mp1")[0].value;
      mp2 = $("#request_tuesday_hash_mp2")[0].value;
      if ($("#request_tuesday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_tuesday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_tuesday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_tuesday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_tuesday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_tuesday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_tuesday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_tuesday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_tuesday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_tuesday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_tuesday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_tuesday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_tuesday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_tuesday_hash_worker_primary")[0].value;
      secondary1 = $("#request_tuesday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_tuesday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_tuesday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_tuesday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_tuesday_hash_worker_secondary5")[0].value;

      b_time = $("#request_tuesday_hash_b_time")[0].value;
      b_location = $("#request_tuesday_hash_b_location")[0].value;
      b_name_number = $("#request_tuesday_hash_b_name_number")[0].value;

    } else if  (from_day == "wed") {
      start_time = $("#request_wednesday_hash_start_time")[0].value;
      end_time = $("#request_wednesday_hash_end_time")[0].value;
      cp1 = $("#request_wednesday_hash_cp1")[0].value;
      cp2 = $("#request_wednesday_hash_cp2")[0].value;
      mp1 = $("#request_wednesday_hash_mp1")[0].value;
      mp2 = $("#request_wednesday_hash_mp2")[0].value;
      if ($("#request_wednesday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_wednesday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_wednesday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_wednesday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_wednesday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_wednesday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_wednesday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_wednesday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_wednesday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_wednesday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_wednesday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_wednesday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_wednesday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_wednesday_hash_worker_primary")[0].value;
      secondary1 = $("#request_wednesday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_wednesday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_wednesday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_wednesday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_wednesday_hash_worker_secondary5")[0].value;

      b_time = $("#request_wednesday_hash_b_time")[0].value;
      b_location = $("#request_wednesday_hash_b_location")[0].value;
      b_name_number = $("#request_wednesday_hash_b_name_number")[0].value;

    } else if  (from_day == "thu") {
      start_time = $("#request_thursday_hash_start_time")[0].value;
      end_time = $("#request_thursday_hash_end_time")[0].value;
      cp1 = $("#request_thursday_hash_cp1")[0].value;
      cp2 = $("#request_thursday_hash_cp2")[0].value;
      mp1 = $("#request_thursday_hash_mp1")[0].value;
      mp2 = $("#request_thursday_hash_mp2")[0].value;
      if ($("#request_thursday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_thursday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_thursday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_thursday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_thursday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_thursday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_thursday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_thursday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_thursday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_thursday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_thursday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_thursday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_thursday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_thursday_hash_worker_primary")[0].value;
      secondary1 = $("#request_thursday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_thursday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_thursday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_thursday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_thursday_hash_worker_secondary5")[0].value;

      b_time = $("#request_thursday_hash_b_time")[0].value;
      b_location = $("#request_thursday_hash_b_location")[0].value;
      b_name_number = $("#request_thursday_hash_b_name_number")[0].value;

    } else if  (from_day == "fri") {
      start_time = $("#request_friday_hash_start_time")[0].value;
      end_time = $("#request_friday_hash_end_time")[0].value;
      cp1 = $("#request_friday_hash_cp1")[0].value;
      cp2 = $("#request_friday_hash_cp2")[0].value;
      mp1 = $("#request_friday_hash_mp1")[0].value;
      mp2 = $("#request_friday_hash_mp2")[0].value;
      if ($("#request_friday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_friday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_friday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_friday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_friday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_friday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_friday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_friday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_friday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_friday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_friday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_friday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_friday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_friday_hash_worker_primary")[0].value;
      secondary1 = $("#request_friday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_friday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_friday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_friday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_friday_hash_worker_secondary5")[0].value;

      b_time = $("#request_friday_hash_b_time")[0].value;
      b_location = $("#request_friday_hash_b_location")[0].value;
      b_name_number = $("#request_friday_hash_b_name_number")[0].value;

    } else if  (from_day == "sat") {
      start_time = $("#request_saturday_hash_start_time")[0].value;
      end_time = $("#request_saturday_hash_end_time")[0].value;
      cp1 = $("#request_saturday_hash_cp1")[0].value;
      cp2 = $("#request_saturday_hash_cp2")[0].value;
      mp1 = $("#request_saturday_hash_mp1")[0].value;
      mp2 = $("#request_saturday_hash_mp2")[0].value;
      if ($("#request_saturday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_saturday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_saturday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_saturday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_saturday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_saturday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_saturday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_saturday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_saturday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_saturday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_saturday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_saturday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_saturday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_saturday_hash_worker_primary")[0].value;
      secondary1 = $("#request_saturday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_saturday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_saturday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_saturday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_saturday_hash_worker_secondary5")[0].value;

      b_time = $("#request_saturday_hash_b_time")[0].value;
      b_location = $("#request_saturday_hash_b_location")[0].value;
      b_name_number = $("#request_saturday_hash_b_name_number")[0].value;

    } else if  (from_day == "sun") {
      start_time = $("#request_sunday_hash_start_time")[0].value;
      end_time = $("#request_sunday_hash_end_time")[0].value;
      cp1 = $("#request_sunday_hash_cp1")[0].value;
      cp2 = $("#request_sunday_hash_cp2")[0].value;
      mp1 = $("#request_sunday_hash_mp1")[0].value;
      mp2 = $("#request_sunday_hash_mp2")[0].value;
      if ($("#request_sunday_hash_MT1").is(':checked')) {
        mt1 = 'true';}
      if ($("#request_sunday_hash_MT2").is(':checked')) {
        mt2 = 'true';}
      if ($("#request_sunday_hash_MT3").is(':checked')) {
        mt3 = 'true';}
      if ($("#request_sunday_hash_MT4").is(':checked')) {
        mt4 = 'true';}
      if ($("#request_sunday_hash_other").is(':checked')) {
        other = 'true';}
      if ($("#request_sunday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_sunday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_sunday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_sunday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
      if ($("#request_sunday_hash_inacc_track").is(':checked')) {
        inacc_track = 'true';}
      if ($("#request_sunday_hash_taw").is(':checked')) {
        taw = 'true';}
      if ($("#request_sunday_hash_single_track_single").is(':checked')) {
        single = 'true';}
      if ($("#request_sunday_hash_single_track_multi").is(':checked')) {
        multi = 'true';}
      primary = $("#request_sunday_hash_worker_primary")[0].value;
      secondary1 = $("#request_sunday_hash_worker_secondary1")[0].value;
      secondary2 = $("#request_sunday_hash_worker_secondary2")[0].value;
      secondary3 = $("#request_sunday_hash_worker_secondary3")[0].value;
      secondary4 = $("#request_sunday_hash_worker_secondary4")[0].value;
      secondary5 = $("#request_sunday_hash_worker_secondary5")[0].value;

      b_time = $("#request_sunday_hash_b_time")[0].value;
      b_location = $("#request_sunday_hash_b_location")[0].value;
      b_name_number = $("#request_sunday_hash_b_name_number")[0].value;
    }


    if (to_day == "mon") {
      $("#request_monday_hash_start_time").val(start_time);
      $("#request_monday_hash_end_time").val(end_time);
      $("#request_monday_hash_cp1").val(cp1);
      $("#request_monday_hash_cp2").val(cp2);
      $("#request_monday_hash_mp1").val(mp1);
      $("#request_monday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_monday_hash_MT1").prop( "checked", true );
      } else {$("#request_monday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_monday_hash_MT2").prop( "checked", true );
    } else {$("#request_monday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_monday_hash_MT3").prop( "checked", true );
      } else {$("#request_monday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_monday_hash_MT4").prop( "checked", true );
      } else {$("#request_monday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_monday_hash_other").prop( "checked", true );
      } else {$("#request_monday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_monday_hash_taw").prop( "checked", true );
      } else {$("#request_monday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_monday_hash_form_b").prop( "checked", true );
      } else {$("#request_monday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_monday_hash_form_c").prop( "checked", true );
      } else {$("#request_monday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_monday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_monday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_monday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_monday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_monday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_monday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_monday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_monday_hash_single_track_multi").prop( "checked", false );}

      $("#request_monday_hash_worker_primary").val(primary);
      $("#request_monday_hash_worker_secondary1").val(secondary1);
      $("#request_monday_hash_worker_secondary2").val(secondary2);
      $("#request_monday_hash_worker_secondary3").val(secondary3);
      $("#request_monday_hash_worker_secondary4").val(secondary4);
      $("#request_monday_hash_worker_secondary5").val(secondary5);

      $("#request_monday_hash_b_time").val(b_time);
      $("#request_monday_hash_b_location").val(b_location);
      $("#request_monday_hash_b_name_number").val(b_name_number);

    } else if (to_day == "tue") {
      $("#request_tuesday_hash_start_time").val(start_time);
      $("#request_tuesday_hash_end_time").val(end_time);
      $("#request_tuesday_hash_cp1").val(cp1);
      $("#request_tuesday_hash_cp2").val(cp2);
      $("#request_tuesday_hash_mp1").val(mp1);
      $("#request_tuesday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_tuesday_hash_MT1").prop( "checked", true );
      } else {$("#request_tuesday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_tuesday_hash_MT2").prop( "checked", true );
      } else {$("#request_tuesday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_tuesday_hash_MT3").prop( "checked", true );
      } else {$("#request_tuesday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_tuesday_hash_MT4").prop( "checked", true );
      } else {$("#request_tuesday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_tuesday_hash_other").prop( "checked", true );
      } else {$("#request_tuesday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_tuesday_hash_taw").prop( "checked", true );
      } else {$("#request_tuesday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_tuesday_hash_form_b").prop( "checked", true );
      } else {$("#request_tuesday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_tuesday_hash_form_c").prop( "checked", true );
      } else {$("#request_tuesday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_tuesday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_tuesday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_tuesday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_tuesday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_tuesday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_tuesday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_tuesday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_tuesday_hash_single_track_multi").prop( "checked", false );}

      $("#request_tuesday_hash_worker_primary").val(primary);
      $("#request_tuesday_hash_worker_secondary1").val(secondary1);
      $("#request_tuesday_hash_worker_secondary2").val(secondary2);
      $("#request_tuesday_hash_worker_secondary3").val(secondary3);
      $("#request_tuesday_hash_worker_secondary4").val(secondary4);
      $("#request_tuesday_hash_worker_secondary5").val(secondary5);

      $("#request_tuesday_hash_b_time").val(b_time);
      $("#request_tuesday_hash_b_location").val(b_location);
      $("#request_tuesday_hash_b_name_number").val(b_name_number);

    } else if (to_day == "wed") {
      $("#request_wednesday_hash_start_time").val(start_time);
      $("#request_wednesday_hash_end_time").val(end_time);
      $("#request_wednesday_hash_cp1").val(cp1);
      $("#request_wednesday_hash_cp2").val(cp2);
      $("#request_wednesday_hash_mp1").val(mp1);
      $("#request_wednesday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_wednesday_hash_MT1").prop( "checked", true );
      } else {$("#request_wednesday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_wednesday_hash_MT2").prop( "checked", true );
    } else {$("#request_wednesday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_wednesday_hash_MT3").prop( "checked", true );
      } else {$("#request_wednesday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_wednesday_hash_MT4").prop( "checked", true );
      } else {$("#request_wednesday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_wednesday_hash_other").prop( "checked", true );
      } else {$("#request_wednesday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_wednesday_hash_taw").prop( "checked", true );
      } else {$("#request_wednesday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_wednesday_hash_form_b").prop( "checked", true );
      } else {$("#request_wednesday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_wednesday_hash_form_c").prop( "checked", true );
      } else {$("#request_wednesday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_wednesday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_wednesday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_wednesday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_wednesday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_wednesday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_wednesday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_wednesday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_wednesday_hash_single_track_multi").prop( "checked", false );}

      $("#request_wednesday_hash_worker_primary").val(primary);
      $("#request_wednesday_hash_worker_secondary1").val(secondary1);
      $("#request_wednesday_hash_worker_secondary2").val(secondary2);
      $("#request_wednesday_hash_worker_secondary3").val(secondary3);
      $("#request_wednesday_hash_worker_secondary4").val(secondary4);
      $("#request_wednesday_hash_worker_secondary5").val(secondary5);

      $("#request_wednesday_hash_b_time").val(b_time);
      $("#request_wednesday_hash_b_location").val(b_location);
      $("#request_wednesday_hash_b_name_number").val(b_name_number);

    } else if (to_day == "thu") {
      $("#request_thursday_hash_start_time").val(start_time);
      $("#request_thursday_hash_end_time").val(end_time);
      $("#request_thursday_hash_cp1").val(cp1);
      $("#request_thursday_hash_cp2").val(cp2);
      $("#request_thursday_hash_mp1").val(mp1);
      $("#request_thursday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_thursday_hash_MT1").prop( "checked", true );
      } else {$("#request_thursday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_thursday_hash_MT2").prop( "checked", true );
    } else {$("#request_thursday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_thursday_hash_MT3").prop( "checked", true );
      } else {$("#request_thursday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_thursday_hash_MT4").prop( "checked", true );
      } else {$("#request_thursday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_thursday_hash_other").prop( "checked", true );
      } else {$("#request_thursday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_thursday_hash_taw").prop( "checked", true );
      } else {$("#request_thursday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_thursday_hash_form_b").prop( "checked", true );
      } else {$("#request_thursday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_thursday_hash_form_c").prop( "checked", true );
      } else {$("#request_thursday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_thursday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_thursday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_thursday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_thursday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_thursday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_thursday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_thursday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_thursday_hash_single_track_multi").prop( "checked", false );}

      $("#request_thursday_hash_worker_primary").val(primary);
      $("#request_thursday_hash_worker_secondary1").val(secondary1);
      $("#request_thursday_hash_worker_secondary2").val(secondary2);
      $("#request_thursday_hash_worker_secondary3").val(secondary3);
      $("#request_thursday_hash_worker_secondary4").val(secondary4);
      $("#request_thursday_hash_worker_secondary5").val(secondary5);

      $("#request_thursday_hash_b_time").val(b_time);
      $("#request_thursday_hash_b_location").val(b_location);
      $("#request_thursday_hash_b_name_number").val(b_name_number);

    } else if (to_day == "fri") {
      $("#request_friday_hash_start_time").val(start_time);
      $("#request_friday_hash_end_time").val(end_time);
      $("#request_friday_hash_cp1").val(cp1);
      $("#request_friday_hash_cp2").val(cp2);
      $("#request_friday_hash_mp1").val(mp1);
      $("#request_friday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_friday_hash_MT1").prop( "checked", true );
      } else {$("#request_friday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_friday_hash_MT2").prop( "checked", true );
    } else {$("#request_friday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_friday_hash_MT3").prop( "checked", true );
      } else {$("#request_friday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_friday_hash_MT4").prop( "checked", true );
      } else {$("#request_friday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_friday_hash_other").prop( "checked", true );
      } else {$("#request_friday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_friday_hash_taw").prop( "checked", true );
      } else {$("#request_friday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_friday_hash_form_b").prop( "checked", true );
      } else {$("#request_friday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_friday_hash_form_c").prop( "checked", true );
      } else {$("#request_friday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_friday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_friday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_friday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_friday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_friday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_friday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_friday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_friday_hash_single_track_multi").prop( "checked", false );}

      $("#request_friday_hash_worker_primary").val(primary);
      $("#request_friday_hash_worker_secondary1").val(secondary1);
      $("#request_friday_hash_worker_secondary2").val(secondary2);
      $("#request_friday_hash_worker_secondary3").val(secondary3);
      $("#request_friday_hash_worker_secondary4").val(secondary4);
      $("#request_friday_hash_worker_secondary5").val(secondary5);

      $("#request_friday_hash_b_time").val(b_time);
      $("#request_friday_hash_b_location").val(b_location);
      $("#request_friday_hash_b_name_number").val(b_name_number);


    } else if (to_day == "sat") {
      $("#request_saturday_hash_start_time").val(start_time);
      $("#request_saturday_hash_end_time").val(end_time);
      $("#request_saturday_hash_cp1").val(cp1);
      $("#request_saturday_hash_cp2").val(cp2);
      $("#request_saturday_hash_mp1").val(mp1);
      $("#request_saturday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_saturday_hash_MT1").prop( "checked", true );
      } else {$("#request_saturday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_saturday_hash_MT2").prop( "checked", true );
    } else {$("#request_saturday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_saturday_hash_MT3").prop( "checked", true );
      } else {$("#request_saturday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_saturday_hash_MT4").prop( "checked", true );
      } else {$("#request_saturday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_saturday_hash_other").prop( "checked", true );
      } else {$("#request_saturday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_saturday_hash_taw").prop( "checked", true );
      } else {$("#request_saturday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_saturday_hash_form_b").prop( "checked", true );
      } else {$("#request_saturday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_saturday_hash_form_c").prop( "checked", true );
      } else {$("#request_saturday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_saturday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_saturday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_saturday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_saturday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_saturday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_saturday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_saturday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_saturday_hash_single_track_multi").prop( "checked", false );}

      $("#request_saturday_hash_worker_primary").val(primary);
      $("#request_saturday_hash_worker_secondary1").val(secondary1);
      $("#request_saturday_hash_worker_secondary2").val(secondary2);
      $("#request_saturday_hash_worker_secondary3").val(secondary3);
      $("#request_saturday_hash_worker_secondary4").val(secondary4);
      $("#request_saturday_hash_worker_secondary5").val(secondary5);

      $("#request_saturday_hash_b_time").val(b_time);
      $("#request_saturday_hash_b_location").val(b_location);
      $("#request_saturday_hash_b_name_number").val(b_name_number);


    } else if (to_day == "sun") {
      $("#request_sunday_hash_start_time").val(start_time);
      $("#request_sunday_hash_end_time").val(end_time);
      $("#request_sunday_hash_cp1").val(cp1);
      $("#request_sunday_hash_cp2").val(cp2);
      $("#request_sunday_hash_mp1").val(mp1);
      $("#request_sunday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_sunday_hash_MT1").prop( "checked", true );
      } else {$("#request_sunday_hash_MT1").prop( "checked", false );}
      if ( mt2 === "true"){
      $("#request_sunday_hash_MT2").prop( "checked", true );
    } else {$("#request_sunday_hash_MT2").prop( "checked", false );}
      if ( mt3 === "true"){
        $("#request_sunday_hash_MT3").prop( "checked", true );
      } else {$("#request_sunday_hash_MT3").prop( "checked", false );}
      if ( mt4 === "true"){
        $("#request_sunday_hash_MT4").prop( "checked", true );
      } else {$("#request_sunday_hash_MT4").prop( "checked", false );}
      if ( other === "true"){
        $("#request_sunday_hash_other").prop( "checked", true );
      } else {$("#request_sunday_hash_other").prop( "checked", false );}
      if ( taw === "true"){
        $("#request_sunday_hash_taw").prop( "checked", true );
      } else {$("#request_sunday_hash_taw").prop( "checked", false );}
      if ( formb === "true"){
        $("#request_sunday_hash_form_b").prop( "checked", true );
      } else {$("#request_sunday_hash_form_b").prop( "checked", false );}
      if ( formc === "true"){
        $("#request_sunday_hash_form_c").prop( "checked", true );
      } else {$("#request_sunday_hash_form_c").prop( "checked", false );}
      if ( tandt === "true"){
        $("#request_sunday_hash_track_and_time").prop( "checked", true );
      } else {$("#request_sunday_hash_track_and_time").prop( "checked", false );}
      if ( inacc_track === "true"){
        $("#request_sunday_hash_inacc_track").prop( "checked", true );
      } else {$("#request_sunday_hash_track_and_time").prop( "checked", false );}
      if ( single === "true"){
        $("#request_sunday_hash_single_track_single").prop( "checked", true );
      } else {$("#request_sunday_hash_single_track_single").prop( "checked", false );}
      if ( multi === "true"){
        $("#request_sunday_hash_single_track_multi").prop( "checked", true );
      } else {$("#request_sunday_hash_single_track_multi").prop( "checked", false );}

      $("#request_sunday_hash_worker_primary").val(primary);
      $("#request_sunday_hash_worker_secondary1").val(secondary1);
      $("#request_sunday_hash_worker_secondary2").val(secondary2);
      $("#request_sunday_hash_worker_secondary3").val(secondary3);
      $("#request_sunday_hash_worker_secondary4").val(secondary4);
      $("#request_sunday_hash_worker_secondary5").val(secondary5);

      $("#request_sunday_hash_b_time").val(b_time);
      $("#request_sunday_hash_b_location").val(b_location);
      $("#request_sunday_hash_b_name_number").val(b_name_number);

    }

});

$('#request_color').on('change', (event) =>{
  let color = $('#request_color').val();
  $('#request_color').removeClass();
  $('#request_color').addClass(color);
});

$('#request_mon').on('change', (event) =>{
  $('#monday_block').toggleClass("hidden", this.checked);
});
$('#request_tue').on('change', (event) =>{
  $('#tuesday_block').toggleClass("hidden", this.checked);
});
$('#request_wed').on('change', (event) =>{
  $('#wednesday_block').toggleClass("hidden", this.checked);
});
$('#request_thu').on('change', (event) =>{
  $('#thursday_block').toggleClass("hidden", this.checked);
});
$('#request_fri').on('change', (event) =>{
  $('#friday_block').toggleClass("hidden", this.checked);
});
$('#request_sat').on('change', (event) =>{
  $('#saturday_block').toggleClass("hidden", this.checked);
});
$('#request_sun').on('change', (event) =>{
  $('#sunday_block').toggleClass("hidden", this.checked);
});

if ($('#MonData').length > 0){
    if ($('#MonData').attr('data-cancelled') === 'no') {
      $('#monday_block').removeClass("hidden");
    }
    $('#request_monday_hash_start_time').val($('#MonData').attr('data-start'));
    $('#request_monday_hash_end_time').val($('#MonData').attr('data-end'));
    $('#request_monday_hash_cp1').val($('#MonData').attr('data-cp1'));
    $('#request_monday_hash_cp2').val($('#MonData').attr('data-cp2'));
    $('#request_monday_hash_mp1').val($('#MonData').attr('data-mp1'));
    $('#request_monday_hash_mp2').val($('#MonData').attr('data-mp2'));
    if ($('#MonData').attr('data-MT1') === '1') {
      $( "#request_monday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-MT2') === '1') {
      $( "#request_monday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-MT3') === '1') {
      $( "#request_monday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-MT4') === '1') {
      $( "#request_monday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-taw') === '1') {
      $( "#request_monday_hash_taw" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-form_b') === '1') {
      $( "#request_monday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-form_c') === '1') {
      $( "#request_monday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-track_and_time') === '1') {
      $( "#request_monday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-other') === '1') {
      $( "#request_monday_hash_other" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-inacc_track') === '1') {
      $( "#request_monday_hash_inacc_track" ).prop( "checked", true );
    }
    if ($('#MonData').attr('data-single_track') === 'single') {
      $( "#request_monday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_monday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_monday_hash_worker_primary').val($('#MonData').attr('data-worker_primary'));
    $('#request_monday_hash_worker_secondary1').val($('#MonData').attr('data-worker_secondary1'));
    $('#request_monday_hash_worker_secondary2').val($('#MonData').attr('data-worker_secondary2'));
    $('#request_monday_hash_worker_secondary3').val($('#MonData').attr('data-worker_secondary3'));
    $('#request_monday_hash_worker_secondary4').val($('#MonData').attr('data-worker_secondary4'));
    $('#request_monday_hash_worker_secondary5').val($('#MonData').attr('data-worker_secondary5'));

    $('#request_monday_hash_b_time').val($('#MonData').attr('data-btime'));
    $('#request_monday_hash_b_location').val($('#MonData').attr('data-blocation'));
    $('#request_monday_hash_b_name_number').val($('#MonData').attr('data-bnamenumber'));

}

if ($('#TueData').length > 0){
    $('#tuesday_block').removeClass("hidden");
    $('#request_tuesday_hash_start_time').val($('#TueData').attr('data-start'));
    $('#request_tuesday_hash_end_time').val($('#TueData').attr('data-end'));
    $('#request_tuesday_hash_cp1').val($('#TueData').attr('data-cp1'));
    $('#request_tuesday_hash_cp2').val($('#TueData').attr('data-cp2'));
    $('#request_tuesday_hash_mp1').val($('#TueData').attr('data-mp1'));
    $('#request_tuesday_hash_mp2').val($('#TueData').attr('data-mp2'));
    if ($('#TueData').attr('data-MT1') === '1') {
      $( "#request_tuesday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-MT2') === '1') {
      $( "#request_tuesday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-MT3') === '1') {
      $( "#request_tuesday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-MT4') === '1') {
      $( "#request_tuesday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-taw') === '1') {
      $( "#request_tuesday_hash_taw" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-form_b') === '1') {
      $( "#request_tuesday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-form_c') === '1') {
      $( "#request_tuesday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-track_and_time') === '1') {
      $( "#request_tuesday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#TueData').attr('data-single_track') === 'single') {
      $( "#request_tuesday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_tuesday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_tuesday_hash_worker_primary').val($('#TueData').attr('data-worker_primary'));
    $('#request_tuesday_hash_worker_secondary1').val($('#TueData').attr('data-worker_secondary1'));
    $('#request_tuesday_hash_worker_secondary2').val($('#TueData').attr('data-worker_secondary2'));
    $('#request_tuesday_hash_worker_secondary3').val($('#TueData').attr('data-worker_secondary3'));
    $('#request_tuesday_hash_worker_secondary4').val($('#TueData').attr('data-worker_secondary4'));
    $('#request_tuesday_hash_worker_secondary5').val($('#TueData').attr('data-worker_secondary5'));

    $('#request_tuesday_hash_b_time').val($('#TueData').attr('data-btime'));
    $('#request_tuesday_hash_b_location').val($('#TueData').attr('data-blocation'));
    $('#request_tuesday_hash_b_name_number').val($('#TueData').attr('data-bnamenumber'));
}

if ($('#WedData').length > 0){
    $('#wednesday_block').removeClass("hidden");
    $('#request_wednesday_hash_start_time').val($('#WedData').attr('data-start'));
    $('#request_wednesday_hash_end_time').val($('#WedData').attr('data-end'));
    $('#request_wednesday_hash_cp1').val($('#WedData').attr('data-cp1'));
    $('#request_wednesday_hash_cp2').val($('#WedData').attr('data-cp2'));
    $('#request_wednesday_hash_mp1').val($('#WedData').attr('data-mp1'));
    $('#request_wednesday_hash_mp2').val($('#WedData').attr('data-mp2'));
    if ($('#WedData').attr('data-MT1') === '1') {
      $( "#request_wednesday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-MT2') === '1') {
      $( "#request_wednesday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-MT3') === '1') {
      $( "#request_wednesday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-MT4') === '1') {
      $( "#request_wednesday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-taw') === '1') {
      $( "#request_wednesday_hash_taw" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-form_b') === '1') {
      $( "#request_wednesday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-form_c') === '1') {
      $( "#request_wednesday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-track_and_time') === '1') {
      $( "#request_wednesday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#WedData').attr('data-single_track') === 'single') {
      $( "#request_wednesday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_wednesday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_wednesday_hash_worker_primary').val($('#WedData').attr('data-worker_primary'));
    $('#request_wednesday_hash_worker_secondary1').val($('#WedData').attr('data-worker_secondary1'));
    $('#request_wednesday_hash_worker_secondary2').val($('#WedData').attr('data-worker_secondary2'));
    $('#request_wednesday_hash_worker_secondary3').val($('#WedData').attr('data-worker_secondary3'));
    $('#request_wednesday_hash_worker_secondary4').val($('#WedData').attr('data-worker_secondary4'));
    $('#request_wednesday_hash_worker_secondary5').val($('#WedData').attr('data-worker_secondary5'));

    $('#request_wednesday_hash_b_time').val($('#WedData').attr('data-btime'));
    $('#request_wednesday_hash_b_location').val($('#WedData').attr('data-blocation'));
    $('#request_wednesday_hash_b_name_number').val($('#WedData').attr('data-bnamenumber'));
}

if ($('#ThuData').length > 0){
    $('#thursday_block').removeClass("hidden");
    $('#request_thursday_hash_start_time').val($('#ThuData').attr('data-start'));
    $('#request_thursday_hash_end_time').val($('#ThuData').attr('data-end'));
    $('#request_thursday_hash_cp1').val($('#ThuData').attr('data-cp1'));
    $('#request_thursday_hash_cp2').val($('#ThuData').attr('data-cp2'));
    $('#request_thursday_hash_mp1').val($('#ThuData').attr('data-mp1'));
    $('#request_thursday_hash_mp2').val($('#ThuData').attr('data-mp2'));
    if ($('#ThuData').attr('data-MT1') === '1') {
      $( "#request_thursday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-MT2') === '1') {
      $( "#request_thursday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-MT3') === '1') {
      $( "#request_thursday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-MT4') === '1') {
      $( "#request_thursday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-taw') === '1') {
      $( "#request_thursday_hash_taw" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-form_b') === '1') {
      $( "#request_thursday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-form_c') === '1') {
      $( "#request_thursday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-track_and_time') === '1') {
      $( "#request_thursday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#ThuData').attr('data-single_track') === 'single') {
      $( "#request_thursday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_thursday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_thursday_hash_worker_primary').val($('#ThuData').attr('data-worker_primary'));
    $('#request_thursday_hash_worker_secondary1').val($('#ThuData').attr('data-worker_secondary1'));
    $('#request_thursday_hash_worker_secondary2').val($('#ThuData').attr('data-worker_secondary2'));
    $('#request_thursday_hash_worker_secondary3').val($('#ThuData').attr('data-worker_secondary3'));
    $('#request_thursday_hash_worker_secondary4').val($('#ThuData').attr('data-worker_secondary4'));
    $('#request_thursday_hash_worker_secondary5').val($('#ThuData').attr('data-worker_secondary5'));

    $('#request_thursday_hash_b_time').val($('#ThuData').attr('data-btime'));
    $('#request_thursday_hash_b_location').val($('#ThuData').attr('data-blocation'));
    $('#request_thursday_hash_b_name_number').val($('#ThuData').attr('data-bnamenumber'));
}

if ($('#FriData').length > 0){
    $('#friday_block').removeClass("hidden");
    $('#request_friday_hash_start_time').val($('#FriData').attr('data-start'));
    $('#request_friday_hash_end_time').val($('#FriData').attr('data-end'));
    $('#request_friday_hash_cp1').val($('#FriData').attr('data-cp1'));
    $('#request_friday_hash_cp2').val($('#FriData').attr('data-cp2'));
    $('#request_friday_hash_mp1').val($('#FriData').attr('data-mp1'));
    $('#request_friday_hash_mp2').val($('#FriData').attr('data-mp2'));
    if ($('#FriData').attr('data-MT1') === '1') {
      $( "#request_friday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-MT2') === '1') {
      $( "#request_friday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-MT3') === '1') {
      $( "#request_friday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-MT4') === '1') {
      $( "#request_friday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-taw') === '1') {
      $( "#request_friday_hash_taw" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-form_b') === '1') {
      $( "#request_friday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-form_c') === '1') {
      $( "#request_friday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-track_and_time') === '1') {
      $( "#request_friday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#FriData').attr('data-single_track') === 'single') {
      $( "#request_friday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_friday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_friday_hash_worker_primary').val($('#FriData').attr('data-worker_primary'));
    $('#request_friday_hash_worker_secondary1').val($('#FriData').attr('data-worker_secondary1'));
    $('#request_friday_hash_worker_secondary2').val($('#FriData').attr('data-worker_secondary2'));
    $('#request_friday_hash_worker_secondary3').val($('#FriData').attr('data-worker_secondary3'));
    $('#request_friday_hash_worker_secondary4').val($('#FriData').attr('data-worker_secondary4'));
    $('#request_friday_hash_worker_secondary5').val($('#FriData').attr('data-worker_secondary5'));

    $('#request_friday_hash_b_time').val($('#FriData').attr('data-btime'));
    $('#request_friday_hash_b_location').val($('#FriData').attr('data-blocation'));
    $('#request_friday_hash_b_name_number').val($('#FriData').attr('data-bnamenumber'));
}

if ($('#SatData').length > 0){
    $('#saturday_block').removeClass("hidden");
    $('#request_saturday_hash_start_time').val($('#SatData').attr('data-start'));
    $('#request_saturday_hash_end_time').val($('#SatData').attr('data-end'));
    $('#request_saturday_hash_cp1').val($('#SatData').attr('data-cp1'));
    $('#request_saturday_hash_cp2').val($('#SatData').attr('data-cp2'));
    $('#request_saturday_hash_mp1').val($('#SatData').attr('data-mp1'));
    $('#request_saturday_hash_mp2').val($('#SatData').attr('data-mp2'));
    if ($('#SatData').attr('data-MT1') === '1') {
      $( "#request_saturday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-MT2') === '1') {
      $( "#request_saturday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-MT3') === '1') {
      $( "#request_saturday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-MT4') === '1') {
      $( "#request_saturday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-taw') === '1') {
      $( "#request_saturday_hash_taw" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-form_b') === '1') {
      $( "#request_saturday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-form_c') === '1') {
      $( "#request_saturday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-track_and_time') === '1') {
      $( "#request_saturday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#SatData').attr('data-single_track') === 'single') {
      $( "#request_saturday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_saturday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_saturday_hash_worker_primary').val($('#SatData').attr('data-worker_primary'));
    $('#request_saturday_hash_worker_secondary1').val($('#SatData').attr('data-worker_secondary1'));
    $('#request_saturday_hash_worker_secondary2').val($('#SatData').attr('data-worker_secondary2'));
    $('#request_saturday_hash_worker_secondary3').val($('#SatData').attr('data-worker_secondary3'));
    $('#request_saturday_hash_worker_secondary4').val($('#SatData').attr('data-worker_secondary4'));
    $('#request_saturday_hash_worker_secondary5').val($('#SatData').attr('data-worker_secondary5'));

    $('#request_saturday_hash_b_time').val($('#SatData').attr('data-btime'));
    $('#request_saturday_hash_b_location').val($('#SatData').attr('data-blocation'));
    $('#request_saturday_hash_b_name_number').val($('#SatData').attr('data-bnamenumber'));
}

if ($('#SunData').length > 0){

    $('#sunday_block').removeClass("hidden");
    $('#request_sunday_hash_start_time').val($('#SunData').attr('data-start'));
    $('#request_sunday_hash_end_time').val($('#SunData').attr('data-end'));
    $('#request_sunday_hash_cp1').val($('#SunData').attr('data-cp1'));
    $('#request_sunday_hash_cp2').val($('#SunData').attr('data-cp2'));
    $('#request_sunday_hash_mp1').val($('#SunData').attr('data-mp1'));
    $('#request_sunday_hash_mp2').val($('#SunData').attr('data-mp2'));
    if ($('#SunData').attr('data-MT1') === '1') {
      $( "#request_sunday_hash_MT1" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-MT2') === '1') {
      $( "#request_sunday_hash_MT2" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-MT3') === '1') {
      $( "#request_sunday_hash_MT3" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-MT4') === '1') {
      $( "#request_sunday_hash_MT4" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-taw') === '1') {
      $( "#request_sunday_hash_taw" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-form_b') === '1') {
      $( "#request_sunday_hash_form_b" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-form_c') === '1') {
      $( "#request_sunday_hash_form_c" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-track_and_time') === '1') {
      $( "#request_sunday_hash_track_and_time" ).prop( "checked", true );
    }
    if ($('#SunData').attr('data-single_track') === 'single') {
      $( "#request_sunday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_sunday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_sunday_hash_worker_primary').val($('#SunData').attr('data-worker_primary'));
    $('#request_sunday_hash_worker_secondary1').val($('#SunData').attr('data-worker_secondary1'));
    $('#request_sunday_hash_worker_secondary2').val($('#SunData').attr('data-worker_secondary2'));
    $('#request_sunday_hash_worker_secondary3').val($('#SunData').attr('data-worker_secondary3'));
    $('#request_sunday_hash_worker_secondary4').val($('#SunData').attr('data-worker_secondary4'));
    $('#request_sunday_hash_worker_secondary5').val($('#SunData').attr('data-worker_secondary5'));

    $('#request_sunday_hash_b_time').val($('#SunData').attr('data-btime'));
    $('#request_sunday_hash_b_location').val($('#SunData').attr('data-blocation'));
    $('#request_sunday_hash_b_name_number').val($('#SunData').attr('data-bnamenumber'));
}

  $('.savenotes').on('click', (event) =>{
    event.preventDefault();
    $("#ajax_alert").html("Saving notes...");
    $("#ajax_alert").css({display: 'block'});

    let notes = $("#notes_workspace").children("textarea").val();
    let address = $('#notesOverlay').data("address");
    let req =   $('#notesOverlay').data("reqnum");
    let day = $('#notesOverlay').data("day");

    if ($("#notes_workspace").children("textarea").data("type") == "requestor") {
      var reqdata = { id: req, rnotes: notes,  day: day};
    }
    if ($("#notes_workspace").children("textarea").data("type") == "inspector") {
      var reqdata = { id: req, inotes: notes,  day: day};
    }
    if ($("#notes_workspace").children("textarea").data("type") == "admin") {
      var reqdata = { id: req, anotes: notes,  day: day};
    }

    let request = $.ajax({
      method: 'PATCH',
      data: reqdata,
      url: address
    });

    request.done(() => {
      $("#ajax_alert").html("Notes saved");
      setTimeout(closealert, 2000);
      last_clicked.html(notes);

   });
  });

$(".reqstatus").on("mouseover",function(e){

  if (event.target.classList.contains("small60")) {
    $(event.target).children(".index_status")[0].classList.remove("hidden");
  }
});
$(".reqstatus").on("mouseleave",function(e){
  if (event.target.classList.contains("small60")) {
    $(event.target).children(".index_status")[0].classList.add("hidden");
  }
});
$(".index_status").on("mouseleave",function(e){

    $(event.target).parent(".index_status")[0].classList.add("hidden");
});

$('.trigger_overlay').on("click", function() {
    var target_row = $(event.target).parent()[0];
    var bottomWidth = $(target_row).css('width');
    var bottomHeight = $(target_row).css('height');
    var rowPos = $(target_row).offset();
    bottomTop = rowPos.top;
    bottomLeft = rowPos.left;
    $(".superoverlay").css({height: "0%"});
    $('#notesOverlay').hide();
    $('#divOverlay').data("reqnum", target_row.dataset.reqnum);
    $('#divOverlay').css({
      position: 'absolute',
      top: bottomTop,
      left: bottomLeft,
      width: '1900px',
      height: bottomHeight,
      display: "flex"
    });

});

 $(".closeoverlay").click(function() {
    $('#divOverlay').hide();
 });

 $(".closeNotesOverlay").click(function() {
    $('#notesOverlay').hide();
 });

 $('.showpage').on("click",function(){
  window.location = "/requests/" + $('#divOverlay').data('reqnum');
   return false;
 });

$('.editrequest').on("click",function(){

 window.location = "/requests/" + $('#divOverlay').data('reqnum') + "/edit";
  return false;
});

$('.daily_approve').on("click",function(){
  $(".superoverlay").animate({height: "100%"});
});
$('.shrinkoverlay').on("click",function(){
  $(".superoverlay").animate({height: "0%"});
});

function closealert(){
  $("#ajax_alert").fadeOut();
}

$('.superoverlay_button').on('click', (event) =>{
  event.preventDefault();
  $("#ajax_alert").html("Saving changes...");
  $("#ajax_alert").css({display: 'block'});

  let req = $('#divOverlay').data('reqnum');
  let address = "/api/v1/approvals/" + req;
  let change = $(event.target).data("change");
  let mon = $("#mon_check").prop("checked");
  let tue = $("#tue_check").prop("checked");
  let wed = $("#wed_check").prop("checked");
  let thu = $("#thu_check").prop("checked");
  let fri = $("#fri_check").prop("checked");
  let sat = $("#sat_check").prop("checked");
  let sun = $("#sun_check").prop("checked");
  if ($("#emulate").val() !== undefined) {
    var emulate = ($("#emulate").val());
  } else {
    var emulate = "none";
  }

  let request = $.ajax({
    method: 'PATCH',
    data: {change: change, mon: mon, tue: tue, wed: wed, thu: thu, fri: fri, sat: sat, sun: sun, emulate: emulate},
    url: address
  });

  request.done(() => {
    $("#ajax_alert").html("Updates to request saved");
    setTimeout(closealert, 2000);
 });
});

$('.notes_content').on("click", function() {
    last_clicked = $(event.target);
    let initial = $(event.target).html();
    if ($(event.target).hasClass("requestor_notes")) {
      var type = "requestor";
    }
    if ($(event.target).hasClass("admin_notes")) {
      var type = "admin";
    }
    if ($(event.target).hasClass("inspector_notes")) {
      var type = "inspector";
    }
    var target_cell = $(event.target).parent()[0];
    $('#notesOverlay').data("reqnum", target_cell.dataset.reqnum);

    var bottomWidth = $(target_cell).css('width');
    var bottomHeight = $(target_cell).css('height');
    var rowPos = $(target_cell).offset();
    bottomTop = rowPos.top;
    bottomLeft = rowPos.left;
    $('#divOverlay').hide();
    $(".superoverlay").css({height: "0%"});
    $('#notesOverlay').data("reqnum", target_cell.dataset.reqnum);
    $('#notesOverlay').data("day", target_cell.dataset.day);
    $('#notesOverlay').data("address", target_cell.dataset.address);
    $('#notesOverlay').css({
      position: 'absolute',
      top: bottomTop,
      left: bottomLeft,
      height: bottomHeight,
      display: "flex"
    });
    $("#notes_workspace").children("textarea").val(initial);
    $("#notes_workspace").children("textarea").data("type", type);
    $("#notesOverlay").animate({height: "200px"});
});

$('.group_approve').on('click', (event) =>{
  event.preventDefault();

  let req = $(event.target).data("req");
  let address = "/api/v1/approvals/" + req;
  let change = "approve_all";
  var emulate = $(event.target).data("group");


  let request = $.ajax({
    method: 'PATCH',
    data: {change: change, emulate: emulate},
    url: address
  });

  request.done(() => {
    $(".approvals_bar_block").each(function(){
      if ($(this).text() === (("" + emulate)) && ($(this).hasClass("not_scheduled")) === false){

      $(this).removeClass("pending");
      $(this).removeClass("rejected");
      $(this).addClass("approved");
      }
    });
 });
});

$('.superadmin_approve').on('click', (event) =>{
  event.preventDefault();

  let req = $(event.target).data("req");
  let address = "/api/v1/approvals/" + req;
  let change = "approve_select";
  var emulate = "all";
  let mon = $(event.target).data("mon");
  let tue = $(event.target).data("tue");
  let wed = $(event.target).data("wed");
  let thu = $(event.target).data("thu");
  let fri = $(event.target).data("fri");
  let sat = $(event.target).data("sat");
  let sun = $(event.target).data("sun");


  let request = $.ajax({
    method: 'PATCH',
    data: {change: change, mon: mon, tue: tue, wed: wed, thu: thu, fri: fri, sat: sat, sun: sun, emulate: emulate},
    url: address
  });

  request.done(() => {
    let day = $(event.target).data("day");
    $(".approvals_bar_container").each(function(index){
      if (day === index) {
        $(this).children(".approvals_bar_block").each(function(){
          if ($(this).hasClass("not_scheduled") === false) {
            $(this).removeClass("pending");
            $(this).removeClass("rejected");
            $(this).addClass("approved");
          }
        });
      }
    });
 });
});



});
