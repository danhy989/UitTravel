var tourName = $('#tourName');
var id = $("#id").html().toString()
$(document).ready(
$(function(){
    $.ajax({
        type: 'GET',
        url:'http://localhost:8080/rest/tour/20',
        success: function(item){
            tourName.text(item.title);
        }
    })
})
)
