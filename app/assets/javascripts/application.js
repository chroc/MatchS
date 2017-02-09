// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .
$( document ).ready(function() {
    $(".button-collapse").sideNav();
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $(".modal").modal();
    $(".datepicker").pickadate({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 120 // Creates a dropdown of 15 years to control year
    });
    var i = 3;
    $(".btn-floating").on("click", function(){
      $(".player-inputs").append(
      "<div class='input-field col s12 m6 l6'>"+
      "<input id='player_"+i+"' type='text' name='player_"+i+"'>"+
      "<label for='player_"+i+"'>Player "+i+"</label></div>"
      );
      i ++;
    });
});
"''"
