class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |hm|
  puts " "
  puts "#{hm.name}'s place in #{hm.city}" 
  puts "Price: $#{hm.price} a night."
end
#-------------------------------------------

price_array =  homes.map do |hm|
            hm.price
          end
puts""
puts "Price of homes:"
puts price_array

average_price = price_array.reduce(:+).to_f / price_array.size
puts ""
puts "Average Price:" 
puts average_price
