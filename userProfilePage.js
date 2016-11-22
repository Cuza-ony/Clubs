/**
 * 
 */
"use strict";
$(function() {
	autoSearchClubs();
});

//Set auto-complete array
function autoSearchClubs(){
	var autoSearch = [
	"ACM",
	"IEEE",
	"NavCompass",
	"Navigators",
	"African Student Union"
	 ];
	$("#search").autocomplete({source: autoSearch});
}


