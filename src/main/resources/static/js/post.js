

function summit(){
	var url = "/rest/order";
	var post = {};
	var order ={};
	var xhttp = new XMLHttpRequest();
	var idTour =parseInt(document.getElementById('id').innerHTML);
	order.name = document.getElementById("orderName").value;
	order.phone =parseInt(document.getElementById("orderPhone").value);
	order.address = document.getElementById("orderAddress").value;
	order.passengers = parseInt(document.getElementById("orderPassenger").value);
	order.decription = document.getElementById("orderDecription").value;
	post.order = order;  
	post.idTour = idTour;
	var json =JSON.stringify(post);
	xhttp.open("POST", url, true);
	xhttp.setRequestHeader('Content-type',
			'application/json; charset=utf-8');
	xhttp.onload = function() {

		if (xhttp.readyState == 4 && xhttp.status == "200") {
			alert("Bạn đã order thành công");
			location.reload();
		} else {
			console.log("Add error");
			alert("Bạn đã order thất bại");
		}
	}
	xhttp.send(json);
}