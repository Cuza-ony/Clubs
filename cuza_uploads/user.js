/**
 * 
 */
"use strict";
var value;

$(function() {
	autoSearchClubs();
});

//Set auto-complete array
function autoSearchClubs(){
	var autoSearch = [
	"Association for Computing Machinery - ACM",
	"Institute of Electrical and Electronic Engineers - IEEE",
	"NavCompass",
	"Navigators",
	"African Student Union - ASU"
	 ];
	$("#search").autocomplete({source: autoSearch});
}




