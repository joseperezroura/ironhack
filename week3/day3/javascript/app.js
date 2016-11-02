// countries = ["puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
// var countries = ["puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];
function countCountries (country, array) {

	var counter = 0

	array.forEach(function (eachCountry) {
		if (eachCountry === country) {
			counter += 1
		}
	});
	return counter; 
}


var countries = [
"Puerto Rico", "Puerto Rico",
"USA", "USA", "USA", "USA", "USA",
"Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", 
"Cuba", "Cuba", "Cuba", "Cuba",
"Nigeria", "Haiti"
 ];


console.log(countCountries("USA",countries) == 5);
console.log(countCountries("Puerto Rico",countries) == 2);
console.log(countCountries("Cuba",countries) == 4);
console.log(countCountries("Nicaragua",countries) == 1);
console.log(countCountries("Japan",countries) == 0);




// puts " "
// puts "Countries represented in this room:"
// console.log(" ");
// console.log("Countries represented in this room:");
// console.log("-----------------------------------");


// // countries.each do |a_country|
// // 	puts "Some of us are from #{a_country}!!"
// // end
// countries.forEach(function (aCountry) {
// console.log("Some of us are from " + aCountry + "!!");
// console.log(`Some of us are from ${aCountry}!!`)
// });


// // puts " "
// console.log(" ");


// // uppercase_countries = countries.map do |a_country|
// // 	a_country.uppercase_countries
// // end
// var uppercaseCountries = countries.map(function (aCountry) {
// 	return aCountry.toUpperCase();
// });

// uppercaseCountries.forEach(function (uppercaseCountries) {
// console.log("SOME OF US ARE FROM " + uppercaseCountries + "!!");
// });

// puts"COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):"
// puts"---------------------------------------------------"

// uppercase_countries.each do |a_country|
// 	puts "SOMEO OF US ARE FROM #{a_country}"
// end
