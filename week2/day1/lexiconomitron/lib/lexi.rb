class Lexiconomitron

def eat_t (text)
	text.gsub!("t","")

end

def reverse_words(array)


	new_array = array.map(&:reverse!)

	no_t_array = new_array.map do |word|
		word.downcase.gsub("t", "")



	end
	 
	no_t_array
	 # third_array = []
	 # third_array.push(no_t_array[0])
	 # third_array.push(no_t_array[-1])
	 # third_array

end

end
