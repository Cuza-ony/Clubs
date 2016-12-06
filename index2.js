$(document).ready(function () {
	
	
	$('#register-form').submit(function(e) {
		var username = $("#username").val();
		var first_name = $("#firstname").val();
		var last_name = $("#lastname").val();
		var gender = $("#gender").val();
		var year = $("#year").val();
		var username = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		
	    if ($.trim($(firstname).val()) === "") {
	        
	        alert('you did not fill out one of the fields');
	    }
	    else if($.trim($(lastname).val()) === "")
	    {
	    	 alert('you did not fill out one of the fields');
	    	 e.preventDefault();
	    }
	    else if($.trim($(gender).val()) === "")
	    {
	    	 alert('you did not fill out one of the fields');
	    	 e.preventDefault();
	    }
	    else if($.trim($(year).val()) === "")
	    {
	    	 alert('you did not fill out one of the fields');
	    	 e.preventDefault();
	    }
	    else if($.trim($(email).val()) === "")
	    {
	    	 alert('you did not fill out one of the fields');
	    	 e.preventDefault();
	    }
	    else if($.trim($(username).val()) === "")
	    {
	    	
	    	alert('you did not fill out one of the fields');
	    	e.preventDefault();
	    }
	    else if($.trim($(password).val()) === "")
	    {
	    	 alert('you did not fill out one of the fields');
	    	 
	    	 $(document).ajaxStop(alert('you did not fill out password'));
	    	 
	    	 
	    }
	    
	    
	    e.preventDefault();
	    
	    $.ajax({ url: "Servlet", data: {firstname : first_name, lastname : last_name, gender : gender, 
			year : year, username : username, password : password, email : email}, success:validate});
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

