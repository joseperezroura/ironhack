console.log("APP JS ONLINE");

$(document).ready(function () {

console.log("The page has finished loading.")
promptForLocation();

});

function promptForLocation () {
	if ("geolocation" in navigator) {
		var optionsThing = {
			enableHighAccuracy: true,
			timeout: 2000
		};

		navigator.geolocation.getCurrentPosition(showPositionInDom, showError, optionsThing);
	}

	else {
		var errorHtml = `
		<div class="alert alert-danger" role="alert">
		<strong> Sorry! </strong>
		Your browser is too old to use this site.
		Please upgrade to Google chrome or something.
		</div>`;

		$("body").prepend(errorHtml)
	}
}



function showPositionInDom (locationInfo){
	console.log("Got position successfully.");
	console.log(locationInfo);

	$(".js-lat").html(locationInfo.coords.latitude);
	$(".js-lng").html(locationInfo.coords.latitude);
}

function showError (errorInfo) {
	console.log("Error getting position.");
	console.log(errorInfo);

	var positionErrorHtml = `
		<div class="alert alert-danger" role="alert">
		<strong> Sorry! </strong>
		There was an error retrieving your position.
		
		<button class="btn btn-default js-try-again"> Try again </button>
		</div>`;

		$("body").prepend(positionErrorHtml);
		$(".js-try-again").on("click", function(){
			location.reload();
		});
}


