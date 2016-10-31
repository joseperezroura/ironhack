phrase = "Have! a? nice day!"
phrase = phrase.gsub(/[[:punct:]]/,'')
phrase_array = phrase.split('')
sorted_phrase = phrase_array.sort { |a , b| a.downcase <=> b.downcase }