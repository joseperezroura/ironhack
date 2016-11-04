"use strict";


var Vikings = require("./lib/vikings.js");
var PitFight = require("./lib/pitfight.js");
var Saxons = require("./lib/saxons.js");
var SaxsonTown = require("./lib/saxontown.js");

var thor = new Vikings("Thor" , 650, 5);
var bjorn = new Vikings("Bjorn" , 100, 9);
var gunnr = new Vikings("Gunnr" , 100, 10);
var leif = new Vikings("Leif" , 1000, 3);

var saxon = new Saxons(20, 4)

// ======================================================================
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
// var fight2 = new PitFight(bjorn,gunnr);


// console.log("5 seconds");

// setTimeout(function () {
// console.log("2 seconds are up")
// }, 2000);

// fight1.startFight();
// fight2.startFight();

// var fight = new SaxonTown(thor,saxon);

// fight.startFight()

