#Question 1: Ask for encrypted word
puts "What is your encrypted word?"
caes_cip = gets.chomp!
#Question 2: Ask for number of spaces wou want letters to shift
puts "How many spaces do you want the alphabet to shift?"
alph_spaces = gets.chomp!
#Change word from a string into an array
def solve_cipher text shift = 5
	shift %= 26
	cyphred = ""
	text.each_char do |char|
		ascii = char.ord
		if ascii.between?(97, 122)
			shifted = (ascii + shift > 122)? (ascii + shift - 26) : (ascii + shift)
			cyphred << shifted.chr
		elsif ascii.between?(65, 90)
			shifted = (ascii + shift > 90)? (ascii + shift - 26) : (ascii + shift)
			cyphred << shifted.chr
		else
			cyphred << ascii.chr
		end
	end
	puts cyphred
end
	
#Change letters in array according to question 2 response
#Change new array into new string
#Print Response
