var fs = require('fs');



function fileActions(err, file){ 
    if (err) {
        throw err;
    }
	
	var printEpisodes = JSON.parse(file);
	var i;
	for (i = 0; i < printEpisodes.length ; i ++) {
  		console.log(printEpisodes[i].title);
  		console.log(`episode number ${printEpisodes[i].episode_number}`);
  		console.log(printEpisodes[i].description);

  		var roundedRating = Math.round(printEpisodes[i].rating);
  		console.log(`rating ${roundedRating}`);

  		var stars = ""
  		var x;

		for (x = 0; x < roundedRating; x += 1) {
				stars += "*"
		}
		console.log(stars);
  		console.log("");

	} 
}

fs.readFile("./episodes.json", 'utf8', fileActions);









// var fs = require('fs');



// function fileActions(err, file){ 
//     if (err) {
//         throw err;
//     }
//     var episodes = JSON.parse(file);
//     console.log(episodes[3].title)


// }
// fs.readFile("./episodes.json", 'utf8', fileActions);


//     // console.log(episodes[0].title);
//     // console.log(episodes[0].episode_number);
//     // console.log(episodes[0].description);
//     // console.log(episodes[0].rating);