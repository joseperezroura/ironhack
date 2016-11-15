
console.log("App JS Ready")

$(document).ready(function () {

	$(".js-fetch-characters").on("click", fetchCharacters);

});

function fetchCharacters () {
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError,
		});
	}

function showCharacters (x) {
	console.log("Fetch characters success");
	console.log(x);
	
	x.forEach(function (oneCharacter) {
		
		$(".js-character-list").append(oneCharacter.name);
	
	});

} 


function handleError (errorThing) {
	console.log("Fetch Characters error");
	console.log(errorThing.responseText);
}