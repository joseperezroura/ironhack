cities = ["ub", "memphis", "paris"]

capitalize_cities_array = cities.map do |x|
	x.capitalize
end

puts capitalize_cities_array


# heroes_array = ["Batman", "Green Latern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

# lowercase_array = []

# heroes_array.each do |x|
# 	lowercase_array.push( x.downcase )
# end

# # -----------------------------------------



# lowercase_array = heroes_array.map do |x|
# 	x.downcase

# end


# lengths_array = heroes_array.map do |x|
# 	x.length
# end



 # 0: "Batman"    -> "batman"
 # 1: "Green Latern"  -> "green lantern"
 # 2: "Superman"  -> "superman"
 # 3: "The Flash" -> "the flash"
 # 

 # puts "ORIGINAL ARRAY"
 # puts "-------------"
 # puts heroes_array

 # puts " "
 # puts " "
 # puts " "

 # puts "NEW ARRAY"
 # puts "-------------"
 # puts lowercase_array

 # puts " "
 # puts " "
 # puts " "

 # puts "LENGTHS"
 # puts "--------------"
 # puts lengths_array