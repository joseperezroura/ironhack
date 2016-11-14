console.log("CONSOLE LOG");

$(document).ready(function () {


$(".js-pizza").on("click", function () {
	$(".js-small").append("PIZZA PIZZA");
});

$(".empanadas").click(function () {
	$(".js-heading").after(`
		<span>"Empanada Time</span>
		<a href="#"> SEE MORE EMPANADAS </a>`);
});

$("#cookies").on("click", cookieMessage);



function cookieMessage () { 
	var cookieContent = `<div class="popup">
						<h2>"Have some cookies."</h2>

						<p> Cookies are good for you.  Here's why:</p>

						<ul>
						<li> Cookies taste good </li>
						<li> They have 0 calories </li>
						<li> Cookies don't lie to you </li>
						</ul>
						</div>`;

						$("body").after(cookieContent)
						$(".js-pizza").empty()

					}

  $(".js-button-thing").on("click", function () {
    $("body").after(`<img src="images/unicorn1.gif">`);
  });


  $(".js-change-button-color").on("click", function () {
    $(".js-button-thing").addClass("btn");

    if ($(".js-button-thing").hasClass("btn-info")) {
      $(".js-button-thing").addClass("btn-danger");
      $(".js-button-thing").removeClass("btn-info");
    }

    else {
      $(".js-button-thing").addClass("btn-info");
      $(".js-button-thing").removeClass("btn-danger");
    }
  });


});