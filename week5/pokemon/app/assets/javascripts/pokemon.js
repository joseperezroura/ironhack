$(document).on("ready", function() {
	
	$(".js-show-pokemon").on("click", function () {
		var pokemonUri = $(this).data("pokemon-uri");


		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
		// console.log("Button wired! CLICK!");
		// console.log(pokemon-uri);
	});
});

PokemonApp.Pokemon = class {
		constructor (pokemonUri) {
			this.apiUrl = pokemonUri;
		}

		render () {
			console.log(`Rendering pokemone with URL: ${this.apiUrl}`);


			$.ajax({
				type: "GET",
				url: `/${this.apiUrl}`,
				success: PokemonApp.showPokemonModal,
				error: PokemonApp.handleError
			});
		}
	};

	PokemonApp.showPokemonModal = function (apiResult) {
		console.log("Pokemon API success!");
		console.log(apiResult);


		$(".js-pkmn-name").text(apiResult.name)
		$(".js-pkmn-number").text(`#${apiResult.pkdx_id}`)
		$(".js-pkmn-height").text(apiResult.height)
		$(".js-pkmn-weight").text(apiResult.weight)
		$(".js-pkmn-hp").text(apiResult.hp)
		$(".js-pkmn-attack").text(apiResult.attack)
		$(".js-pkmn-defense").text(apiResult.defense)
		$(".js-pkmn-spattack").text(apiResult.sp_atk)
		$(".js-pkmn-spdefense").text(apiResult.sp_def)
		$(".js-pkmn-speed").text(apiResult.speed)


		
		if (apiResult.types.length === 2) {
		// if array has 2 objects 
		
		var a = [apiResult.types[0].name , apiResult.types[1].name]
         
        }
		else {

		var a = [apiResult.types[0].name]

		}

		console.log(a)


		$(".js-pkmn-type").text(a.join(', '))






		$(".js-pokemon-modal").modal("show");
	};

	PokemonApp.handleError = function (errorThang) {
		console.log("API Error");
		console.log(errorThang.responseText);
	};