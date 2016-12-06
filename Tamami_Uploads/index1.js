$(document).ready(function () {
	
	$('#login-form').submit(function(e) {
		alert(submitted);
		e.preventDefault();
		var username = $("#user").val();
		var password = $("#pass").val();
		
		
		 $.ajax({ url: "Servlet", data: {username:username, password : password}, success:validate});
		 
		
	});
	
	
	
});

function validate(message){
	
	if ($.trim(message)== 's') 
	{
		//alert("made it");
		window.location.href ="http://localhost:8080/compilation/user.html";
	}
	alert(message);
	
}