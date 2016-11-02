// countries = ["puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
var countries = ["puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];



// puts " "
// puts "Countries represented in this room:"
console.log(" ");
console.log("Countries represented in this room:");
console.log("-----------------------------------");


// countries.each do |a_country|
// 	puts "Some of us are from #{a_country}!!"
// end
countries.forEach(function (aCountry) {
console.log("Some of us are from " + aCountry + "!!");
console.log(`Some of us are from ${aCountry}!!`)
});


// puts " "
console.log(" ");


// uppercase_countries = countries.map do |a_country|
// 	a_country.uppercase_countries
// end
var uppercaseCountries = countries.map(function (aCountry) {
	return aCountry.toUpperCase();
});
console.log("SOME OF US ARE FROM " + uppercaseCountries + "!!");

// puts"COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):"
// puts"---------------------------------------------------"

// uppercase_countries.each do |a_country|
// 	puts "SOMEO OF US ARE FROM #{a_country}"
// end
