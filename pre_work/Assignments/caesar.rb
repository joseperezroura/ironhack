def solve_cipher()
	puts "input number of shifts: "
  number_shift = gets.chomp.to_i

	if number_shift == 0
		shift = -3
	else
		shift = number_shift
	end

	puts "Write your word or phrase: "
	encrypt_word = gets.chomp
	encrypting_word = encrypt_word.split('')
	encrypting_letters = [ ]
	
	for l in encrypting_word    
		if l.ord == 32
			encrypting_letters << l
		elsif l.upcase.ord + shift < 65
			l = l.ord + 26 + shift
			encrypting_letters << l
		elsif l.upcase.ord + shift > 90
			l = l.ord - 26 + shift
			encrypting_letters << l
		else
			encrypting_letters << (l.ord + shift)
		end
	end
	
	cipher_encryption = [ ]
	
	for numbers in encrypting_letters
		cipher_encryption << numbers.chr
	end
		encrypted_word = cipher_encryption.join("")
		puts encrypted_word
end

solve_cipher()








# #Question 1: Ask for encrypted word
# puts "What is your encrypted word?"
# caes_cip = gets.chomp!
# #Question 2: Ask for number of spaces wou want letters to shift
# puts "How many spaces do you want the alphabet to shift?"
# alph_spaces = gets.chomp!
# #Change word from a string into an array
# def solve_cipher text shift = 5
# 	shift %= 26
# 	cyphred = ""
# 	text.each_char do |char|
# 		ascii = char.ord
# 		if ascii.between?(97, 122)
# 			shifted = (ascii + shift > 122)? (ascii + shift - 26) : (ascii + shift)
# 			cyphred << shifted.chr
# 		elsif ascii.between?(65, 90)
# 			shifted = (ascii + shift > 90)? (ascii + shift - 26) : (ascii + shift)
# 			cyphred << shifted.chr
# 		else
# 			cyphred << ascii.chr
# 		end
# 	end
# 	puts cyphred
# end
	
#Change letters in array according to question 2 response
#Change new array into new string
#Print Response
