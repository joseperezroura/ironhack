console.log("CONSOLE LOG");

$(document).ready(function () {


$(".js-pizza").on("click", function () {
	alert("PIZZA PIZZA")
});

$(".empanadas").click(function () {
	alert("Empanada Time");
});

$("#cookies").on("click", cookieMessage);

function cookieMessage () { alert("Have some cookies.")}

  $(".js-button-thing").on("click", function () {
    $("body").append(`<img src="images/unicorn1.gif">`);
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