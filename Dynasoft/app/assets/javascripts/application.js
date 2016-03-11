//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {

    $(".edit_room").submit(function(e) {
        var x = parseInt($(this).find( 'input#room_occupancy')[0].value);
        var y = parseInt($(this).find( 'input#room_maxOccupancy')[0].value);
        if (x > y) {
            if(!confirm("Occupancy is greater than Max Occupancy, are you sure you wish to submit?")) {
                e.preventDefault();
            }
        }
    });

});