/**
 * 
 */
"use strict";
$(function() {
	welcomePanel();
});
//Change the welcome panel to match the name of the searched club
function welcomePanel(){
	    var parameters = location.search.substring(1).split("&");
	    var temp = parameters[0].split("=");
	    var message = unescape(temp[1]);
	    message = message.replace(/\+/g, " ");
	    $("#n").html(message);
}








