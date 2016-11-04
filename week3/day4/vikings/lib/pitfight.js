class PitFight {
	constructor (viking1, viking2) {
		this.viking1 = viking1;
		this.viking2 = viking2;
	}

startFight(){
		var vik1NewHealth = this.viking1.health;
		var vik2NewHealth = this.viking2.health;


		while (vik1NewHealth > 5 && vik2NewHealth > 5){
			vik1NewHealth -= this.viking2.strength;
			vik2NewHealth -= this.viking1.strength;
			console.log(`${this.viking1.name}'s health: ${vik1NewHealth}, ${this.viking2.name}'s health:${vik2NewHealth}`);
		}
		if (vik1NewHealth > vik2NewHealth) {
    console.log(`${this.viking1.name} survived this pit fight; ${this.viking2.name} is dead!`)
} else { 
    console.log(`${this.viking2.name} survived this pit fight; ${this.viking1.name} is dead!`)
}
			
	}

}
module.exports = PitFight;

// pitfight () {
// 	console.log(`${this.name} is fighting`);
// }
// if (vik1NewHealth > vik2NewHealth) {
//     console.log(`${vik1NewHealth.name} is the winer`)
// } else { 
//     console.log(`${vik2NewHealth.name} is the winer`)
// }