console.log("App Running")

$(document).ready(function () {
$(".js-song-search-form").on("submit", getSong);
});

function getSong (eventThing) {
	eventThing.preventDefault();

 var songInput = $(".js-song-search").val();
 console.log(songInput)

 $.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&q=${songInput}`,
		success: displaySong,
		error: handleError,
	});	

};



function displaySong(songInfo){

console.log(songInfo)
}
function handleError (errorThing) {
	console.log("Song search error");
	console.log(errorThing.responseText);
}