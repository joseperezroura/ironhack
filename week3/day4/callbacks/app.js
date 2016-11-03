"use strict";

var read = require("read");


console.log("");
console.log("START OF PROGRAM");




function displayName (firstArg, inputName) {
	console.log(`Hello, user ${inputName}.`);
}


read({ prompt: "What is your name?"}, displayName)

function after5Seconds () {
	console.log("5 seconds");
}

setTimeout(after5Seconds, 5000);

setTimeout(function () {
console.log("2 seconds are up")
}, 2000);



var i;
for (i = 1; i <= 500; i +=1) {
	console.log(i)
}

console.log("loop is over");
console.log("");
console.log("END OF PROGRAM");
console.log("");