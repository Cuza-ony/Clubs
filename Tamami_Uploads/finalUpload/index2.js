/*Author: Tamami Lillis
 * Date: 12/6/16
 * 
 * JQuery and Ajax for the page. When submit is clicked it takes the information and sends it to the server. 
 * 	 * First it checks to see if all fields have been filled
	 * if there is an empty cell, it sends out an error message on html.right under submit button.
	 * Second it sends the information to ajax to be sent to the server.
	 * If successful it redirects you to the new page.
	 * If not, it prints out error statement at bottom of the page.
	 * 
	 * Unlike the demo I actually got the success function to write on the html page and let the user submit again. 
 */


$(document).ready(function () {
	
	/*
	 * Login form submit function.
	 */
	
	$('#login-form').submit(function(e) {
		//alert("success");
		var username = $("#user").val();
		//alert(username);
		var password = $("#pass").val();
		
		
	    if ($.trim($(user, pass).val()) === "") {
	        $("#message1").html("*You did not fill out all of the fields given. Please try Again.");
	        return false;
	    }
	    
	    
	    
	    e.preventDefault();
	    
	    $.ajax({ url: "Servlet", data: {user:username, pass : password}, success:validateLogin});
	});
	
	/*
	 * Register form submit function. 
	 */
	$('#register-form').submit(function(e) {
		var username = $("#username").val();
		var first_name = $("#firstname").val();
		var last_name = $("#lastname").val();
		var gender = $("#gender").val();
		var year = $("#year").val();
		var username = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		
	    if ($.trim($(firstname, lastname, username, password, gender, year, email).val()) === "") {
	        $("#message").html("*You did not fill out all of the fields given. Please try Again.");
	        return false;
	    }
	    e.preventDefault();
	    
	    $.ajax({ url: "Servlet", data: {firstname : first_name, lastname : last_name, gender : gender, 
			year : year, username : username, password : password, email : email}, success:validate});
	});
	
	
});

//success function for register servlet
function validate(message){
	
	if ($.trim(message)== 's') 
	{
		//alert("made it");
		window.location.href ="http://localhost:8080/compilation/user.html";
	}
	 $("#message").html(message);
	
}

//success function for login
function validateLogin(message){
	
	if ($.trim(message)== 's') 
	{
		//alert("made it");
		window.location.href ="http://localhost:8080/compilation/user.html";
	}
	 $("#message1").html(message);
	
}

