

function summit(){
	var post = {};
	var formData =JSON.stringify($('#myForm').serializeArray());
	var idTour = document.getElementById('id').innerHTML;
	post.order = formData;
	post.idTour = idTour;
	$.ajax({
	  type: "POST",
	  url: "manager/rest/order",
	  data: post,
	  success: function(){
	  	alert("success");
	  },
	  dataType: "json",
	  contentType : "application/json"
	});
}