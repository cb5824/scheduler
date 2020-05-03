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

$(".daytab").on("click", function(){
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
    mp1 = null;
    mp2 = null;
    mt1 = null;
    mt2 = null;
    mt3 = null;
    mt4 = null;
    formb = null;
    formc = null;
    tandt = null;
    taw = null;
    single = null;
    multi = null;
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
      if ($("#request_monday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_monday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_monday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_tuesday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_tuesday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_tuesday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_wednesday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_wednesday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_wednesday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_thursday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_thursday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_thursday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_friday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_friday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_friday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_saturday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_saturday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_saturday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      if ($("#request_sunday_hash_form_b").is(':checked')) {
        formb = 'true';}
      if ($("#request_sunday_hash_form_c").is(':checked')) {
        formc = 'true';}
      if ($("#request_sunday_hash_track_and_time").is(':checked')) {
        tandt = 'true';}
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
      }
      if ( mt2 === "true"){
      $("#request_monday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_monday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_monday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_monday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_monday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_monday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_monday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_monday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_monday_hash_worker_primary").val(primary);
      $("#request_monday_hash_worker_secondary1").val(secondary1);
      $("#request_monday_hash_worker_secondary2").val(secondary2);
      $("#request_monday_hash_worker_secondary3").val(secondary3);
      $("#request_monday_hash_worker_secondary4").val(secondary4);
      $("#request_monday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "tue") {
      $("#request_tuesday_hash_start_time").val(start_time);
      $("#request_tuesday_hash_end_time").val(end_time);
      $("#request_tuesday_hash_cp1").val(cp1);
      $("#request_tuesday_hash_cp2").val(cp2);
      $("#request_tuesday_hash_mp1").val(mp1);
      $("#request_tuesday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_tuesday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_tuesday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_tuesday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_tuesday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_tuesday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_tuesday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_tuesday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_tuesday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_tuesday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_tuesday_hash_worker_primary").val(primary);
      $("#request_tuesday_hash_worker_secondary1").val(secondary1);
      $("#request_tuesday_hash_worker_secondary2").val(secondary2);
      $("#request_tuesday_hash_worker_secondary3").val(secondary3);
      $("#request_tuesday_hash_worker_secondary4").val(secondary4);
      $("#request_tuesday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "wed") {
      $("#request_wednesday_hash_start_time").val(start_time);
      $("#request_wednesday_hash_end_time").val(end_time);
      $("#request_wednesday_hash_cp1").val(cp1);
      $("#request_wednesday_hash_cp2").val(cp2);
      $("#request_wednesday_hash_mp1").val(mp1);
      $("#request_wednesday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_wednesday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_wednesday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_wednesday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_wednesday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_wednesday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_wednesday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_wednesday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_wednesday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_wednesday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_wednesday_hash_worker_primary").val(primary);
      $("#request_wednesday_hash_worker_secondary1").val(secondary1);
      $("#request_wednesday_hash_worker_secondary2").val(secondary2);
      $("#request_wednesday_hash_worker_secondary3").val(secondary3);
      $("#request_wednesday_hash_worker_secondary4").val(secondary4);
      $("#request_wednesday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "thu") {
      $("#request_thursday_hash_start_time").val(start_time);
      $("#request_thursday_hash_end_time").val(end_time);
      $("#request_thursday_hash_cp1").val(cp1);
      $("#request_thursday_hash_cp2").val(cp2);
      $("#request_thursday_hash_mp1").val(mp1);
      $("#request_thursday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_thursday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_thursday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_thursday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_thursday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_thursday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_thursday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_thursday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_thursday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_thursday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_thursday_hash_worker_primary").val(primary);
      $("#request_thursday_hash_worker_secondary1").val(secondary1);
      $("#request_thursday_hash_worker_secondary2").val(secondary2);
      $("#request_thursday_hash_worker_secondary3").val(secondary3);
      $("#request_thursday_hash_worker_secondary4").val(secondary4);
      $("#request_thursday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "fri") {
      $("#request_friday_hash_start_time").val(start_time);
      $("#request_friday_hash_end_time").val(end_time);
      $("#request_friday_hash_cp1").val(cp1);
      $("#request_friday_hash_cp2").val(cp2);
      $("#request_friday_hash_mp1").val(mp1);
      $("#request_friday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_friday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_friday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_friday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_friday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_friday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_friday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_friday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_friday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_friday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_friday_hash_worker_primary").val(primary);
      $("#request_friday_hash_worker_secondary1").val(secondary1);
      $("#request_friday_hash_worker_secondary2").val(secondary2);
      $("#request_friday_hash_worker_secondary3").val(secondary3);
      $("#request_friday_hash_worker_secondary4").val(secondary4);
      $("#request_friday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "sat") {
      $("#request_saturday_hash_start_time").val(start_time);
      $("#request_saturday_hash_end_time").val(end_time);
      $("#request_saturday_hash_cp1").val(cp1);
      $("#request_saturday_hash_cp2").val(cp2);
      $("#request_saturday_hash_mp1").val(mp1);
      $("#request_saturday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_saturday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_saturday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_saturday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_saturday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_saturday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_saturday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_saturday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_saturday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_saturday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_saturday_hash_worker_primary").val(primary);
      $("#request_saturday_hash_worker_secondary1").val(secondary1);
      $("#request_saturday_hash_worker_secondary2").val(secondary2);
      $("#request_saturday_hash_worker_secondary3").val(secondary3);
      $("#request_saturday_hash_worker_secondary4").val(secondary4);
      $("#request_saturday_hash_worker_secondary5").val(secondary5);

    } else if (to_day == "sun") {
      $("#request_sunday_hash_start_time").val(start_time);
      $("#request_sunday_hash_end_time").val(end_time);
      $("#request_sunday_hash_cp1").val(cp1);
      $("#request_sunday_hash_cp2").val(cp2);
      $("#request_sunday_hash_mp1").val(mp1);
      $("#request_sunday_hash_mp2").val(mp2);

      if (mt1 === "true") {
        $("#request_sunday_hash_MT1").prop( "checked", true );
      }
      if ( mt2 === "true"){
      $("#request_sunday_hash_MT2").prop( "checked", true );
      }
      if ( mt3 === "true"){
        $("#request_sunday_hash_MT3").prop( "checked", true );
      }
      if ( mt4 === "true"){
        $("#request_sunday_hash_MT4").prop( "checked", true );
      }
      if ( formb === "true"){
        $("#request_sunday_hash_form_b").prop( "checked", true );
      }
      if ( formc === "true"){
        $("#request_sunday_hash_form_c").prop( "checked", true );
      }
      if ( tandt === "true"){
        $("#request_sunday_hash_track_and_time").prop( "checked", true );
      }
      if ( single === "true"){
        $("#request_sunday_hash_single_track_single").prop( "checked", true );
      }
      if ( multi === "true"){
        $("#request_sunday_hash_single_track_multi").prop( "checked", true );
      }

      $("#request_sunday_hash_worker_primary").val(primary);
      $("#request_sunday_hash_worker_secondary1").val(secondary1);
      $("#request_sunday_hash_worker_secondary2").val(secondary2);
      $("#request_sunday_hash_worker_secondary3").val(secondary3);
      $("#request_sunday_hash_worker_secondary4").val(secondary4);
      $("#request_sunday_hash_worker_secondary5").val(secondary5);
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
    if ($('#MonData').attr('data-single_track') === 'single') {
      $( "#request_monday_hash_single_track_single" ).prop( "checked", true );
    } else {
      $( "#request_monday_hash_single_track_multi" ).prop( "checked", true );
    }
    $('#request_monday_hash_MT2').val($('#MonData').attr('data-MT2'));
    $('#request_monday_hash_MT3').val($('#MonData').attr('data-MT3'));
    $('#request_monday_hash_MT4').val($('#MonData').attr('data-MT4'));
    $('#request_monday_hash_taw').val($('#MonData').attr('data-taw'));
    $('#request_monday_hash_form_b').val($('#MonData').attr('data-form_b'));
    $('#request_monday_hash_form_c').val($('#MonData').attr('data-form_c'));
    $('#request_monday_hash_track_and_time').val($('#MonData').attr('data-track_and_time'));
    $('#request_monday_hash_worker_primary').val($('#MonData').attr('data-worker_primary'));
    $('#request_monday_hash_worker_secondary1').val($('#MonData').attr('data-worker_secondary1'));
    $('#request_monday_hash_worker_secondary2').val($('#MonData').attr('data-worker_secondary2'));
    $('#request_monday_hash_worker_secondary3').val($('#MonData').attr('data-worker_secondary3'));
    $('#request_monday_hash_worker_secondary4').val($('#MonData').attr('data-worker_secondary4'));
    $('#request_monday_hash_worker_secondary5').val($('#MonData').attr('data-worker_secondary5'));
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
    $('#request_tuesday_hash_MT2').val($('#TueData').attr('data-MT2'));
    $('#request_tuesday_hash_MT3').val($('#TueData').attr('data-MT3'));
    $('#request_tuesday_hash_MT4').val($('#TueData').attr('data-MT4'));
    $('#request_tuesday_hash_taw').val($('#TueData').attr('data-taw'));
    $('#request_tuesday_hash_form_b').val($('#TueData').attr('data-form_b'));
    $('#request_tuesday_hash_form_c').val($('#TueData').attr('data-form_c'));
    $('#request_tuesday_hash_track_and_time').val($('#TueData').attr('data-track_and_time'));
    $('#request_tuesday_hash_worker_primary').val($('#TueData').attr('data-worker_primary'));
    $('#request_tuesday_hash_worker_secondary1').val($('#TueData').attr('data-worker_secondary1'));
    $('#request_tuesday_hash_worker_secondary2').val($('#TueData').attr('data-worker_secondary2'));
    $('#request_tuesday_hash_worker_secondary3').val($('#TueData').attr('data-worker_secondary3'));
    $('#request_tuesday_hash_worker_secondary4').val($('#TueData').attr('data-worker_secondary4'));
    $('#request_tuesday_hash_worker_secondary5').val($('#TueData').attr('data-worker_secondary5'));
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
    $('#request_wednesday_hash_MT2').val($('#WedData').attr('data-MT2'));
    $('#request_wednesday_hash_MT3').val($('#WedData').attr('data-MT3'));
    $('#request_wednesday_hash_MT4').val($('#WedData').attr('data-MT4'));
    $('#request_wednesday_hash_taw').val($('#WedData').attr('data-taw'));
    $('#request_wednesday_hash_form_b').val($('#WedData').attr('data-form_b'));
    $('#request_wednesday_hash_form_c').val($('#WedData').attr('data-form_c'));
    $('#request_wednesday_hash_track_and_time').val($('#WedData').attr('data-track_and_time'));
    $('#request_wednesday_hash_worker_primary').val($('#WedData').attr('data-worker_primary'));
    $('#request_wednesday_hash_worker_secondary1').val($('#WedData').attr('data-worker_secondary1'));
    $('#request_wednesday_hash_worker_secondary2').val($('#WedData').attr('data-worker_secondary2'));
    $('#request_wednesday_hash_worker_secondary3').val($('#WedData').attr('data-worker_secondary3'));
    $('#request_wednesday_hash_worker_secondary4').val($('#WedData').attr('data-worker_secondary4'));
    $('#request_wednesday_hash_worker_secondary5').val($('#WedData').attr('data-worker_secondary5'));
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
    $('#request_thursday_hash_MT2').val($('#ThuData').attr('data-MT2'));
    $('#request_thursday_hash_MT3').val($('#ThuData').attr('data-MT3'));
    $('#request_thursday_hash_MT4').val($('#ThuData').attr('data-MT4'));
    $('#request_thursday_hash_taw').val($('#ThuData').attr('data-taw'));
    $('#request_thursday_hash_form_b').val($('#ThuData').attr('data-form_b'));
    $('#request_thursday_hash_form_c').val($('#ThuData').attr('data-form_c'));
    $('#request_thursday_hash_track_and_time').val($('#ThuData').attr('data-track_and_time'));
    $('#request_thursday_hash_worker_primary').val($('#ThuData').attr('data-worker_primary'));
    $('#request_thursday_hash_worker_secondary1').val($('#ThuData').attr('data-worker_secondary1'));
    $('#request_thursday_hash_worker_secondary2').val($('#ThuData').attr('data-worker_secondary2'));
    $('#request_thursday_hash_worker_secondary3').val($('#ThuData').attr('data-worker_secondary3'));
    $('#request_thursday_hash_worker_secondary4').val($('#ThuData').attr('data-worker_secondary4'));
    $('#request_thursday_hash_worker_secondary5').val($('#ThuData').attr('data-worker_secondary5'));
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
    $('#request_friday_hash_MT2').val($('#FriData').attr('data-MT2'));
    $('#request_friday_hash_MT3').val($('#FriData').attr('data-MT3'));
    $('#request_friday_hash_MT4').val($('#FriData').attr('data-MT4'));
    $('#request_friday_hash_taw').val($('#FriData').attr('data-taw'));
    $('#request_friday_hash_form_b').val($('#FriData').attr('data-form_b'));
    $('#request_friday_hash_form_c').val($('#FriData').attr('data-form_c'));
    $('#request_friday_hash_track_and_time').val($('#FriData').attr('data-track_and_time'));
    $('#request_friday_hash_worker_primary').val($('#FriData').attr('data-worker_primary'));
    $('#request_friday_hash_worker_secondary1').val($('#FriData').attr('data-worker_secondary1'));
    $('#request_friday_hash_worker_secondary2').val($('#FriData').attr('data-worker_secondary2'));
    $('#request_friday_hash_worker_secondary3').val($('#FriData').attr('data-worker_secondary3'));
    $('#request_friday_hash_worker_secondary4').val($('#FriData').attr('data-worker_secondary4'));
    $('#request_friday_hash_worker_secondary5').val($('#FriData').attr('data-worker_secondary5'));
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
    $('#request_saturday_hash_MT2').val($('#SatData').attr('data-MT2'));
    $('#request_saturday_hash_MT3').val($('#SatData').attr('data-MT3'));
    $('#request_saturday_hash_MT4').val($('#SatData').attr('data-MT4'));
    $('#request_saturday_hash_taw').val($('#SatData').attr('data-taw'));
    $('#request_saturday_hash_form_b').val($('#SatData').attr('data-form_b'));
    $('#request_saturday_hash_form_c').val($('#SatData').attr('data-form_c'));
    $('#request_saturday_hash_track_and_time').val($('#SatData').attr('data-track_and_time'));
    $('#request_saturday_hash_worker_primary').val($('#SatData').attr('data-worker_primary'));
    $('#request_saturday_hash_worker_secondary1').val($('#SatData').attr('data-worker_secondary1'));
    $('#request_saturday_hash_worker_secondary2').val($('#SatData').attr('data-worker_secondary2'));
    $('#request_saturday_hash_worker_secondary3').val($('#SatData').attr('data-worker_secondary3'));
    $('#request_saturday_hash_worker_secondary4').val($('#SatData').attr('data-worker_secondary4'));
    $('#request_saturday_hash_worker_secondary5').val($('#SatData').attr('data-worker_secondary5'));
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
    $('#request_sunday_hash_MT2').val($('#SunData').attr('data-MT2'));
    $('#request_sunday_hash_MT3').val($('#SunData').attr('data-MT3'));
    $('#request_sunday_hash_MT4').val($('#SunData').attr('data-MT4'));
    $('#request_sunday_hash_taw').val($('#SunData').attr('data-taw'));
    $('#request_sunday_hash_form_b').val($('#SunData').attr('data-form_b'));
    $('#request_sunday_hash_form_c').val($('#SunData').attr('data-form_c'));
    $('#request_sunday_hash_track_and_time').val($('#SunData').attr('data-track_and_time'));
    $('#request_sunday_hash_worker_primary').val($('#SunData').attr('data-worker_primary'));
    $('#request_sunday_hash_worker_secondary1').val($('#SunData').attr('data-worker_secondary1'));
    $('#request_sunday_hash_worker_secondary2').val($('#SunData').attr('data-worker_secondary2'));
    $('#request_sunday_hash_worker_secondary3').val($('#SunData').attr('data-worker_secondary3'));
    $('#request_sunday_hash_worker_secondary4').val($('#SunData').attr('data-worker_secondary4'));
    $('#request_sunday_hash_worker_secondary5').val($('#SunData').attr('data-worker_secondary5'));
  }

  $('.savenotes').on('click', (event) =>{
    event.preventDefault();
    let address = event.target.dataset.address;
    let req = event.target.dataset.request;
    let day = event.target.dataset.day;
    if (event.target.dataset.type === "requestor") {
      var test = '#requestornotes' + day + req;
      let notes = $(test).val();
      var reqdata = { id: req, rnotes: notes,  day: day}
    } else if (event.target.dataset.type === "admin") {
      var test = '#adminnotes' + day + req;
      let notes = $(test).val();
      var reqdata = { id: req, anotes: notes,  day: day}
    } else if (event.target.dataset.type === "inspector") {
      var test = '#inspectornotes' + day + req;
      let notes = $(test).val();
      var reqdata = { id: req, inotes: notes,  day: day}
    }

    let request = $.ajax({
      method: 'PATCH',
      data: reqdata,
      url: address
    });

    request.done(() => {

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

});
