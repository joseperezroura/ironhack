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
	// console.log(x.id)
	if (x.images.length !== 0){



	var artistItem = `
	
	<div>${x.name}<p>
	
	<img data-id="${x.id}" src="${x.images[0].url}" class="js-click"></div>`



	$(".js-artist-result").append(artistItem);
	

		};

	});
	$(".js-click").on("click", getAlbums)
};

function getAlbums () {
	console.log($(this).data("id"))
	var the_id = $(this).data("id")
 $.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${the_id}/albums`,
		success: displayAlbum,
		error: handleError,
	});
};

function displayAlbum () {
	console.log("success of get albums");
	console.log(displayAlbum);

}


function handleError (errorThing) {
	console.log("Artist search error");
	console.log(errorThing.responseText);
}