var fs = require('fs');



function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log(episodes[0].title);
}
fs.readFile("./episodes.json", 'utf8', fileActions);


