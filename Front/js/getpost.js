var header = $('#title-header');
var tourName = $('#tour-name');
var postTitle = $('#post-title');
var price = $('#price');
var imgFull = $('#img-full');
var imgHeader = $('.parallax-slider');
var content = $('#content');
var indicator = $('#indicator')
var listImage = $('#list-image')
var id = $("#id").html().toString()
$(document).ready(
$(function(){
    $.ajax({
        type: 'GET',
        url:'C:/Users/NTD/Desktop/destino/a.json',
        success: function(item){
            header.text(item.name);
            imgHeader.attr("src",item.tour.image);
            post-title.text(item.tour.name);
            imgFull.attr("src",item.imageFull);
            content.text(item.detail);
            price.text(item.price + "VND")
        }
    })
})
)
$.getJSON("http://localhost:8000/test.json", function(jsons) {
    for(i = 0 ; i <jsons.length;i++)
    {
        if(i==0)
        {
            indicator.append("<li"+" "+"data-target=#carousel-example-2"+" "+"data-slide-to="+i+" class="+"\"active\"></li>");
            listImage.prepend("<div class=\"carousel-item active\">\n"+"<div class=\"view\">\n"+"<img class=\"d-block w-100\" src=\""+jsons[i].image+"\">\n"+"</div>\n"+"</div>");
        }
        else
        {
            indicator.append("<li"+" "+"data-target=#carousel-example-2"+" "+"data-slide-to="+i+"></li>");
            listImage.prepend("<div class=\"carousel-item\">\n"+"<div class=\"view\">\n"+"<img class=\"d-block w-100\" src=\""+jsons[i].image+"\">\n"+"</div>\n"+"</div>");
        }
    } // this will show the info it in firebug console
});