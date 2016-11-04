"use strict";

var Vikings = require("./lib/vikings.js");
var Saxons = require("./lib/saxon.js");
var PitFight = require("./lib/pitfight.js");
var SaxsonTown = require("./lib/saxontown.js");

var thor = new Vikings("Thor" , 1050, 5);
var bjorn = new Vikings("Bjorn" , 100, 9);
var gunnr = new Vikings("Gunnr" , 100, 10);
var leif = new Vikings("Leif" , 1050, 20);

var saxon1 = new Saxons(20, 4)
var saxon2 = new Saxons(11, 8)
var saxon3 = new Saxons(12, 12)

var arrayVikings = [thor, bjorn, gunnr, leif]



var randomNumber = this.saxons[Math.floor(Math.random()*items.length)];
// some nunber between 10 and 15;
var randomHealth = this.saxons[Math.floor(Math.random()*items.length)];
// some number between 20 and 60;
var randomStrength = this.saxons[Math.floor(Math.random()*items.length)];
// some number between 20 and 60;
var saxonArray = []

for (var i = 0; i <= randomNumber; i ++ ){
	var saxon = new Saxon(randomHealth, randomStrength);
	saxonArray.push(saxon)
}





// ======================================================================

// -----------------SAXON TOWN FIGHT------------------------------------------------







// -----------------VIKING PIT FIGHT------------------------------------------------



console.log ("Welcome to my epic fight between Vikings!")

function after20Seconds () {
fight1.startFight();
// fight2.startFight();
}
setTimeout(after20Seconds, 20000);

function after5Seconds () {
console.log(`The great Thor and Leif will be fighting to the death!`)
}

setTimeout(after5Seconds, 5000);

var fight1 = new PitFight(thor,leif);
// ===========================================================================

