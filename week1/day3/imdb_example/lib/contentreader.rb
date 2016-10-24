require("imdb")

content = File.read 'movies.txt'
# puts content
content_array = content.split ("\n")
# p content_array
array = content_array.map do |x|

the_search = Imdb::Search.new(x)
first_result = the_search.movies[0]
first_result
end

count = 10

while count >= 0

	# p first_result.title
	# puts first_result.rating.round

array.each do |x|

if x.rating.round >= count
	print "|#|"
	else 
	print "| |"
end
end
puts " "
count = count - 1
end
	print "---------------------"
	puts " "

last = content_array.length

(1..last).each do |x|
	
     x + 1

	print "|#{x}|"

end	
	# print "|1||2||3||4||5||6|"
	puts " "
    puts " "
# puts content_array 
# 	puts " "
#     puts " "

puts ""

last = content_array.length - 1

(0..last).each do |x|
	
	y = x + 1

	puts "#{y}. #{content_array[x]}"

end




#comment




# count = count -1

# end


# puts first_result.rating.round
# p first_result.title

# end


# while < 11 do
# 	puts "#"
# else
# 	puts " "

# content_array each do |x| 



# puts "Got a total of #{the_search.movies.length} results"

# content.each_with_index{|line, i| puts "#{i+1}: #{line}"}



# movies = ["Star Wars", "The Avengers", "Silicon Valley"]

# the_search = Imdb::Search.new("Star Wars")


# # The .movies method returns the array that contains the results
# first_result = the_search.movies[0]


# puts "Got a total of #{the_search.movies.length} results"


# The Imdb::Movie class contains the movie info
# #     Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie
# puts "First result:"
# puts first_result.title
# puts first_result.rating