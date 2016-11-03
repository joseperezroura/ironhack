class Car {
	constructor (model, noise){
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}
kind () {
		console.log(`${this.model} is a type of car that has ${this.wheels} wheels.`);
	}	

sound () {
		console.log(`The ${this.model} makes this sound: ${this.noise} when speeding!`);
	}


}

module.exports = Car;
