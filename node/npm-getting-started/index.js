var age = parseInt(prompt("Welcome to Ironhack cinema. How old are you?"));

if (age <= 16) {
  console.log ("You have a teenager discount");
} else if (age >= 65) {
  console.log ("You have the senior citizen discount :)");
} else {
  console.log ("Sorry, you have no discount :(");
}
