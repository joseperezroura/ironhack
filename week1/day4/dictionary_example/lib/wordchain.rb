require 'ruby-dictionary'

class WordChain

def initialize(dictionary)
        @dictionary = dictionary
end


	def find_chain (word1, word2)
	    puts word1
	    character_array1 = word1.split("") 
	    character_array2 = word2.split("")
	    	

		while character_array1 != character_array2
			for i in 0..character_array1.length-1
				if character_array1[i] != character_array2[i]
					temp_array = character_array1.clone
					temp_array[i] = character_array2[i]
					new_word = temp_array.join
					if @dictionary.exists?(new_word) == true
						character_array1 = temp_array
						puts character_array1.join
					end
	    		end
			end
		end
	end
end


# require 'ruby-dictionary'

# class WordChain
# attr_accessor(:dictionary)
# def initialize(dictionary)
#         @dictionary = dictionary
# end


# def find_chain (word1, word2)
#     	puts word1
#     	character_array1 = word1.split('') 
#     	character_array2 = word2.split('')
#     	for i in 0..character_array1.length - 1
#     		if character_array1[i] != character_array2[i]
#     			character_array1[i] = character_array2[i]
#     			character_array1.join
# 			if dictionary.exists?(character_array1.join) == true
# 					puts character_array1.join
# 			else
# 				nil

#     		end
				
#     end
# end
# end
# end

