class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def array_printer(array)
  array.each do |x|
    puts "name: #{x.name} | city: #{x.city} | capacity: #{x.capacity} | price: #{x.price}"
  end
end


textbnb = [
	Home.new("Joe's place","Miami",3, 45),
	Home.new("Marc's place","Paris",2,80),
	Home.new("Ike's place","Tampa",4,50),
	Home.new("Sara's place","Portland",5,42),
    Home.new("Lorena's place","Miami",5,47),
    Home.new("Elliot's place","Memphis",3,41),
    Home.new("Chenje's place","Zimbabwe",2,45),
    Home.new("Mary's place","Ft.Lauderdale",4,49),
    Home.new("Jay's place","Miami",2,42),
    Home.new("John's place","San Francisco",2,120)
]


#----------------------Application Code--------------------------------------



textbnb.each do |x|
	puts" "
	puts x.name
	puts" "

end


#---------------------Sort-----------------------------------------------------


puts "Would you like to sort by price or capacity?"
user_input = gets.chomp
if user_input == "price"
array_printer(textbnb.sort_by { |x| x.price }.reverse)
else
array_printer(textbnb.sort_by { |x| x.capacity }.reverse)
end


#------------------Select City----------------------------------------------------

puts "What city would you like to visit?"
user_input = gets.chomp
new_array = textbnb.select do |x| 
user_input == x.city
end
array_printer(new_array)	

price_array =  textbnb.map do |x|
            x.price
          end
puts""

average_price = price_array.reduce(:+).to_f / price_array.size
puts ""
puts "Average Price:" 
puts average_price

puts ""

puts "At what price would you like to find a home?"
user_input = gets.chomp.to_i
new_array = textbnb.select do |x|
	x.price == user_input
end
array_printer(new_array)





