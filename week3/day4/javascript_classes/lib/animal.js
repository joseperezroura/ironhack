class Animal {
	constructor (name, breed, sound) {
		this.name = name;
		this.breed = breed;
		this.sound = sound;
	}
chase () {
	console.log(`${this.name} is chasing cars`);
}
bark () {
	console.log(this.sound);
	}
}



// class Animal
//   def initialize(name,breed,sound)


// function Animal (name, breed, sound) {

// 	// @name = name ruby
// 	this.name = name;

// 	this.breed = breed;

// 	this.sound = sound;
// }


// Animal.prototype.chase = function () {
// 	console.log(`${this.name} is chasing cars.`)
// };

// Animal.prototype.bark = function () {
// 	console.log(this.sound);
// };


module.exports = Animal;