/**
 * JS page to add functionality to User Login/Register Page
 * After User successfully Logs in or creates an account they will go to user landing page
 */
$(function(){
	$("#login").click(userLandingPage);
});

//loads user landing page
function userLandingPage(){
	$("#login").submit();
	window.location.href = "user.html";
}



$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});



