"use strict";

// fs is built in
var fs = require("fs");
var read = require("read");


console.log("");
console.log("START OF PROGRAM");
//================================================================


fs.readFile("./movies.txt", "utf8", function (error, contentsOfFile) {
	console.log("error", error);
	console.log("")
	console.log("contents", contentsOfFile)


	if (error) {
		console.log("Oh No! There was a file error!")
	}

	else {
	var moviesArray = contentsOfFile.split("\n");
	console.log(moviesArray)
	}
});

// =========================================================


function displayName (firstArg, inputName) {
	console.log(`Hello, user ${inputName}.`);
}


read({ prompt: "What is your name?"}, displayName)

// ===============================================================


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