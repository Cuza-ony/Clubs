"use strict";
var value;
var valueParts;
$(function() {
	$.ajax({ url: "Servlet", data: "p=clubs",success: showClubs});
});
//Change the welcome panel to match the name of the searched club
function showClubs(info){
	value = info; 
    valueParts = value.split("{.split}");
    //place html in there proper places on page
    $("#newArea").html(valueParts[0]);
    $("#currArea").html(valueParts[1]);
}
