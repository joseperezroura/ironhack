
console.log("App JS Ready");

$(document).ready(function () {

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-ackbar-form").on("submit", saveAckbar);
	$(".js-character-form").on("submit", saveCharacter)
});

function saveCharacter (eventThing) {
	eventThing.preventDefault();
	
	var nameInput = $(".js-character-name").val();

	if (nameInput === "") {
		nameInput = "name";
	}

	var weaponInput = $(".js-character-weapon").val();

	if (weaponInput === "") {
		weaponInput = "weapon";
	}

	var occupationInput = $(".js-character-occupation").val();

	if (weaponInput === "") {
		weaponInput = "coder";
	}

	var characterInfo = {
		name: nameInput,
		occupation: occupationInput,
		weapon: weaponInput,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: characterInfo,
		success: showCharacter,
		error: handleError,
	});
}


function showCharacter (infoFromApi) {
	console.log("Save Character success");
	console.log(infoFromApi);
}








// ===================================================================/

function saveAckbar (eventThing) {
	eventThing.preventDefault();


	var weaponInput = $(".js-ackbar-weapon").val();

	if (weaponInput === "") {
		weaponInput = "Memes";
	}

	var ackbarInfo = {
		name: "Admiral Ackbar",
		occupation: "Rebel Fleet Admiral",
		weapon: weaponInput,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: showAckbar,
		error: handleError,
	});
}


function showAckbar (infoFromApi) {
	console.log("Save Ackbar success");
	console.log(infoFromApi);
}

// ==================================================/

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
	
	$(".js-character-list").empty();

	x.forEach(function (oneCharacter) {
		var characterItem = `
		<li> 
		<h3>${oneCharacter.name}</h3>
		<p> Weapon: ${oneCharacter.weapon} </p> 
		<p> Occupation: ${oneCharacter.occupation} </p> 
		<p> Debt: ${oneCharacter.debt} </p> 
		<p> Id: ${oneCharacter.id} </p> 
		</li>`;

		$(".js-character-list").append(characterItem);	
	});

} 


function handleError (errorThing) {
	console.log("Fetch Characters error");
	console.log(errorThing.responseText);
}