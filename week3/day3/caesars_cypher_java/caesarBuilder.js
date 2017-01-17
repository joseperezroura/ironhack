function caesarCipher (message) {
	
	letters = message.split("");
	newString = "";

	letters.forEach(function(letter){
		var char = ( letter.charCodeAt(0) );
		var charChange = (char - 3);
		var newChar = (String.fromCharCode(charChange));
		newString += newChar;
	})

	return (newString);


}

var encrypted = caesarCipher("brutus");

console.log(encrypted);














// function caesarCipher (message) {
//   // [...]
// }

// var encrypted = caesarCipher("brutus");

// console.log(encrypted);
// //=> "_orqrp"

// console.log( "b".charCodeAt(0) );  //=>  98
// console.log( "r".charCodeAt(0) );  //=> 114

// console.log( String.fromCharCode(95)  );  //=> "_"
// console.log( String.fromCharCode(111) );  //=> "o"


// // encrypt_word = gets.chomp

//     var encrypted = "brutus"

// 	var stringArray = encrypt.split('')
	
//     var lettersArray = [];
	
// 	stringArray.forEach(function (x) {
    
//     lettersArray.push(x);
  
//   	});

// 	for (var length in stringArray) {

// 	if () {
    
// 	;
	
// 	} 

// 	else if () {
    
//     ;
	
// 	} 

// 	else if () {
    
//     ;
	
// 	} 

// 	else {
    
//     ;
	
// 	}

// 	}

// 	// for l in encrypting_word    
	
// 		if l.ord == 32
// 			encrypting_letters << l
	
// 		elsif l.upcase.ord + shift < 65
// 			l = l.ord + 26 + shift
// 			encrypting_letters << l
	
// 		elsif l.upcase.ord + shift > 90
// 			l = l.ord - 26 + shift
// 			encrypting_letters << l
	
// 		else
// 			encrypting_letters << (l.ord + shift)
	
// 		end
	
// 	end
	
// 	cipher_encryption = [ ]
	
// 	for numbers in encrypting_letters
// 		cipher_encryption << numbers.chr
	
// 	end
// 		encrypted_word = cipher_encryption.join("")
// 		puts encrypted_word
// end

// solve_cipher()

// var eightCipher = caesarBuilder(8)

// eightCipher("blah")

// function {encrypt

// }

//currying