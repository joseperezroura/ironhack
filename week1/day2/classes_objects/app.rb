# #Good
# #class SuperUser

# #Bad
# #class super_user
# #class Super_User



# class User
# 	def login
# 		puts "User is logging in"
# 	end

# 	def greet
# 		puts "Hello"
# 	end
# end


# #-----------------------

require_relative("lib/user.rb")
require_relative("lib/car.rb")


# nizar = User.new("Nizar", "jose.perezroura@gmail.com", "30", "ambiguous", "cismale")




# nizar.login
# nizar.greet


jose_car = Car.new("Toyota", "Broom")
jimbo_car = Car.new("Porsche", "Broooooooooom")

jose_car.sound
jimbo_car.sound



# class Car
# 	def honk
# 		puts "Broom"
# 	end

# end

# car_driver = Car.new
# car_driver.honk

