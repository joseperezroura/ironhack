console.log("App JS Ready");

$(document).ready(function () {

$(".js-artist-search-form").on("submit", getArtist);

});


function getArtist (eventThing) {
	eventThing.preventDefault();


var artistInput = $(".js-artist-search").val();

var searchInfo = {
		q: artistInput,
		type: "artist"		
	};
$.ajax({
		type: "GET",
		url: "https://api.spotify.com/v1/search",
		data: searchInfo,
		success: displayArtist,
		error: handleError,
	});
}

function displayArtist (artistInfo) {
	console.log("success of get artist")
	console.log(artistInfo);

artistInfo.artists.items.forEach(function (x){
	if (x.images.length !== 0){


	var artistItem = `
	
	<div>${x.name}<p>
	
	<img src="${x.images[0].url}"></div>`

	$(".js-artist-result").append(artistItem);

		};

	});
// $(".js-artist-result").append(<div class="clear"></div>);
}

function handleError (errorThing) {
	console.log("Artist search error");
	console.log(errorThing.responseText);
}