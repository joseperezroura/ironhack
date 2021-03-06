console.log("APP JS ONLINE");

$(document).ready(function () {

console.log("The page has finished loading.")
promptForLocation();
beginWatch();

});

function beginWatch () {
	if ("geolocation" in navigator) {
		navigator.geolocation.watchPosition(watchSuccess, watchError);	
	}
}

function watchSuccess (locInfo) {
	console.log("Watch location:");
	console.log(locInfo)

	var watchItem = `
	<li>
	Latitude: ${locInfo.coords.latitude}
	</li>
	<li>
	Longitude: ${locInfo.coords.longitude}
	</li>`;
	$(".js-watch-list").append(watchItem);
}

function watchError (errInfo) {
	console.log("Watch errorInfo:");
	console.log(errInfo)
}


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
	$(".js-lng").html(locationInfo.coords.longitude);
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


