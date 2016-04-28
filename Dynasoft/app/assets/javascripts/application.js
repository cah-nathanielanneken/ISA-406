//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {
    if (localStorage.getItem("scrollVal") != null) {
	$(window).scrollTop(localStorage.getItem("scrollVal"));
	localStorage.setItem("scrollVal", 0);
    }

    $(".edit_room").submit(function(e) {
        var x = parseInt($(this).find( 'input#room_occupancy')[0].value);
        var y = parseInt($(this).find( 'input#room_maxOccupancy')[0].value);
        if (x > y || x < 0) {
            alert("Occupancy is not allowed to be greater than Max Occupancy or negative!");
            e.preventDefault();
        }
    });

    $(".main-button").click(function(e) {
      localStorage.setItem("scrollVal", $(window).scrollTop());
      var element = $(this);
      setTimeout(function() {
	if ($(element.attr("data-target")).find("#room_occupancy")[0].value == 0) {
          $(element.attr("data-target")).find("#room_occupancy")[0].value = '';
	}
	$(element.attr("data-target")).find("#room_occupancy")[0].focus();
      }, 200);
    });

    $( ".sort-wrap > ul" ).each(function() {
      $(this).sortable();
    });

    $( "#submit-form" ).click(function(e) {
      $( ".sort-wrap > ul" ).each(function() {
        var arr = $(this).sortable("toArray");
	for (var i = 0; i < arr.length; i++) {
	  $( "#"+arr[i]+" input:last-child" ).val(i);
        }
      });
      $( "#rooms-form" ).submit();
    });

});
