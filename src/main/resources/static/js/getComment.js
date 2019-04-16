$(document).ready(function(){
    var windowsHref = window.location.href;
	var urlWindowHref = new URL(windowsHref);
	var idTourInfor = urlWindowHref.searchParams.get("id");
    var url = '/rest/comment/tourInfor/'+idTourInfor;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            obj = JSON.parse(this.responseText);
            console.log(obj);
            $.each(
                obj,
                function(key, value) {
                    $('#areaComment')
                            .append('<div class="media mb-4"><img class="d-flex mr-3 rounded-circle" src="https://img.icons8.com/ios/50/000000/administrator-male.png" alt=""><div class="media-body"><h5 class="mt-0">'+value.name+'</h5>'+value.content+'</div></div>');
                });
        }
    };
    xhttp.open("GET", url, true);
    xhttp.send();

});
    
