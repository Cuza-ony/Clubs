"use strict";
var value;
var valueParts;
$(function() {
	$.ajax({ url: "Servlet", data: "p=events",success: showEvents});
});
//Change the welcome panel to match the name of the searched club
function showEvents(info){
	value = info; 
    valueParts = value.split("{.split}");
    //place html in there proper places on page
    $("#newArea2").html(valueParts[0]);
    $("#currArea2").html(valueParts[1]);
}
