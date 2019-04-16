

function submitComment(){
	var url = "/rest/comment";
	var post = {};
	var comment = {};
	var windowsHref = window.location.href;
	var urlWindowHref = new URL(windowsHref);
	var id = urlWindowHref.searchParams.get("id");
	var xhttp = new XMLHttpRequest();
	var idTourInfor =parseInt(id);
    comment.name = document.getElementById("commentName").value;
    comment.content = document.getElementById("commentContent").value;
	post.comment = comment;  
	post.idTourInfor = idTourInfor;
	var json =JSON.stringify(post);
	xhttp.open("POST", url, true);
	xhttp.setRequestHeader('Content-type',
			'application/json; charset=utf-8');
	xhttp.onload = function() {
		if (xhttp.readyState == 4 && xhttp.status == "200") {
			$('#areaComment')
            .append('<div class="media mb-4"><img class="d-flex mr-3 rounded-circle" src="https://img.icons8.com/ios/50/000000/administrator-male.png" alt=""><div class="media-body"><h5 class="mt-0">'+comment.name+'</h5>'+comment.content+'</div></div>');
		} else {
			console.log("Add error");
			alert("Bạn đã comment thất bại");
		}
	}
	xhttp.send(json);
}