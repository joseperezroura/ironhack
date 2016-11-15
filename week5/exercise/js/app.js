console.log("CONSOLE LOG");

$(document).ready(function () {

var phrases = [
"I'm hungry!",
 "siiiiick!",
 "I want a sandwhich!"
];


function randomPhrase (){ 

var x = phrases[Math.floor(phrases.length * Math.random())];
  $("body").append(`${x}`);


};

randomPhrase();

});