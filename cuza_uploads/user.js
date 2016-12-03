/** Cuza Onyeagba
 * Functionality for User Landing Page
 * Handles autocompete widget for search
 * Handles send button
 */
"use strict";
var value;
var valueParts;
//populate auto-complete array
//ajax request to load user information
$(function() {
	autoSearchClubs();
	$.ajax({ url: "Servlet", data: "p=user",success: user});
});

//Set auto-complete array
function autoSearchClubs(){
	var autoSearch = [              
	"Alumni and Associates of Family, Career and Community Leaders of America",
	"African American Choral Ensemble - AACE",
	"The Agency",
	"American society of Interior Designers - ASID",
	"Knit and Crochet at UGA",
	"UGAnime",
	"Pamoja Dance Company",
	"Cheerleading",
	"Baseball",
	"Equestrian Team",
	"Rowing",
	"BasketBall",
	"Tennis",
	"Soccor",
	"Gymnastics",
	"Softball",
	"Lacrosse",
	"Association of Environmental and Engineering Geologists  - AEG",
	"Campus Kitchen",
	"Environmental Health Science Club",
	"African Student Union - ASU",
	"Asian American Student Association",
	"Black Affairs Council - BAC",
	"Association of Latino Professionals for America - ALPFA",
	"Filipino Student Association - FSA",
	"Navigators - Navs",
	"Muslim Student Association - MSA",
	"Baha'i Association at UGA",
	"A Date to Remember",
	"Free the Girls",
	"Lambda Alliance",
	"Lesbian, Gay, Bisexual and Transgender Resource Center (LGBT)",
	"Ambassadors for Global Awareness",
	"AdClub",
	"American Marketing Association",
	"infUSion Magazine",
	"CURE",
	"PreVeterinary Medicine Club at UGA",
	"Student Veterans Association",
	"American Constitution Society",
	"College Republicans",
	"Model African Union",
	"Law Democrats",
	"Undocumented Student Alliance",
	"Sigma Alpha Lambda",
	"Minorities in Tech - MiT",
	"Association for Computing Machinery - ACM",
	"Institute of Electrical and Electronic Engineers  IEEE",
	"Aviation Club",
	"Outdoor Adventure Club"
	];
	$("#search").autocomplete({source: autoSearch});
}

/**Loads User Information:
 * -name -interests -clubs -events
 * Sends data p=user to servlet, so servlet knows the method to get the
 * data from
 */
function user(info){
	    value = info; 
	    valueParts = value.split("{.split}");
	    //place html in there proper places on page
	    $("#name").html(valueParts[0]);
	    $("#interests").html(valueParts[1]);
	    $("#clubs").html(valueParts[2]);
	    $("#events").html(valueParts[3]);
	    
}