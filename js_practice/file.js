
// <-------javascript proactice--------->

// <-------javascript function syntax------------------------->


// function process(data){
// 	do something....
// }

// <----------for loop----------------------------------------->

for(i = 1; i < 100; i += 1){
	console.log(i)
}

// <----------forEach loop------------------------------------->

var pizza = ["cheese", "roni", "mushroom", "bacon"]

pizza.forEach(function(i){
	var blah = i + " is a great pizza! "
	console.log(blah)
});


// <----------reduce------------------------------------------->

// arr.reduce(callback, [initialValue])

// callback
// Function to execute on each element in the array, taking four arguments:

// 	accumulator
// 	The accumulator accumulates the callback's return values; it is the accumulated value previously returned in the last invocation of the callback, or initialValue, 
// 	if supplied (see below).
// 	currentValue
// 	The current element being processed in the array.
// 	currentIndex
// 	The index of the current element being processed in the array. Starts at index 0, if an initialValue is provided, and at index 1 otherwise.
// 	array
// 	The array reduce was called upon.

// initialValue
// [Optional] Value to use as the first argument to the first call of the callback.
// If no initial value is supplied, the first element in the array will be used. Calling reduce on an empty array without an initial value is an error.


var numbers = [65, 44, 12, 4]
var sum = numbers.reduce((total, amount) => total + amount)
	console.log(sum)
var avg = sum / numbers.length
console.log(avg)	

// In this example, Reduce accepts two parameters, the total and the current amount.
// The reduce method cycles through each number in the array much like it would in a for-loop.
// When the loop starts the total value is the number on the far left (65) and the current amount is the one next to it (44).
// In this particular example, we want to add the current amount to the total.
// The calculation is repeated for each amount in the array, but each time the current value changes to the next number in the array, moving right.
// When there are no more numbers left in the array the method returns the total value.

// <-------------------------javascript filter--------------------------->

var ages = [32, 33, 12, 40];


function overEighteen(value){
	return value >= 18
}

filtered = ages.filter(overEighteen);



console.log(filtered)















// <-------------javascript if else--------------------------------->

// var person = alert("Please enter your name");

// if (person === "" || person === null) {
//     prompt("Please enter your name to continue")
// } else {
//     txt = " Hi " + person + " how are you today? "
// }

