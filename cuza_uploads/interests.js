/** Cuza Onyeagba
 * For interest.html
 * ajax request gets list of all interests and user specific interest 
 * showCurrent places interests in proper place in interest.html
 */
"use strict";
var value;
var valueParts;
$(function() {
	$.ajax({ url: "Servlet", data: "p=interests",success: showInterests});
});
//Change the welcome panel to match the name of the searched club
function showInterests(info){
	value = info; 
    valueParts = value.split("{.split}");
    //place html in there proper places on page
    $("#newArea").html(valueParts[0]);
    $("#currArea").html(valueParts[1]);
}








