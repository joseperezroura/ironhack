class SaxonTown {
	constructor (viking, saxon) {
		this.viking = viking;
		this.saxon = saxon;
	}

startFight(){
		var vikNewHealth = this.viking.health;
		var saxonNewHealth = this.saxon.health;


		while (vikNewHealth > 5 && saxonNewHealth > 5){
			vikNewHealth -= this.saxon.strength;
			saxonNewHealth -= this.viking.strength;
			console.log(`${vikNewHealth}, ${saxonNewHealth}`);
		}
		if (vikNewHealth > saxonNewHealth) {
    console.log(`${this.viking.name} is the winner`)
} else { 
    console.log(`the saxon is the winner`)
}
			
	}
	
}
module.exports = SaxonTown;