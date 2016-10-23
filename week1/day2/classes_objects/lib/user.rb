#lib/user.rb

#name
#email
#age
#ethnicity
#gender






class User
	def initialize(name, email, age, ethnicity, gender)
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender
	end




	def login
		puts "User is logging in"
	end

	def greet
		puts "Hello"
	end
end