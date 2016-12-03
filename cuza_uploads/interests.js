/**
 * 
 */
"use strict";
$(function() {
	$.ajax({ url: "Servlet", data: "p=interests",success: showCurrent});
});
//Change the welcome panel to match the name of the searched club
function showCurrent(info){
	    alert(info);
}








