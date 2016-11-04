"use strict";


var Vikings = require("./lib/vikings.js");
var PitFight = require("./lib/pitfight.js");

var thor = new Vikings("Thor" , 650, 5);
var bjorn = new Vikings("Bjorn" , 100, 9);
var gunnr = new Vikings("Gunnr" , 100, 10);
var leif = new Vikings("Leif" , 1000, 3);


var fight1 = new PitFight(thor,leif);
var fight2 = new PitFight(bjorn,gunnr);

fight1.startFight();
fight2.startFight();