class SaxonTown {
	constructor (vikings, saxons) {
		this.vikings = vikings;
		this.saxons = saxons;
	}
startFight(){
		
	var randomViking = this.vikings[Math.floor(Math.random()*items.length)];
	var randomSaxon = this.saxons[Math.floor(Math.random()*items.length)];

		var vikNewHealth = this.vikings.health;
		var saxonNewHealth = this.saxons.health;


		while (vikNewHealth > 5 && saxonNewHealth > 5){
			vikNewHealth -= this.saxon.strength;
			saxonNewHealth -= this.viking.strength;
			console.log(`${vikNewHealth}, ${saxonNewHealth}`);
		}
		if (vikNewHealth > saxonNewHealth) {
    console.log(`${this.vikings.name} is the winner`)
} else { 
    console.log(`the saxon is the winner`)
}
			
	}
	
}

module.exports = SaxonTown;