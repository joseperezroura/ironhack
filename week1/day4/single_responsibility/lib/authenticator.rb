class Authenticator

	def get_username_input
		
		username_input = gets.chomp
		
		if username_input == "Jose"

			puts "Username correct"


		else

			puts "Wrong Username"

		end

	end

	def get_password_input

		password_input = gets.chomp

		if password_input == "jose123"
			puts "Password correct!"
		else

			puts "Wrong Password"

		end

	end

# def initialize(username_input, password_input)
	
# 	@username_input = username_input
# 	@password_input = password_input


# def username_input	
# 	username_input = "Jose"
# 	if username_input = gets.chomp
# 		puts "What is your password? #{@password_input = gets.chomp}"
# 	else
# 		puts "Wrong Username"
# 	end

# def password_input
# 	password_input = "jose123"
# 	if password_input = gets.chomp

# 		puts "Access Granted"
# 	else
# 		puts "Access Denied"
# 	end
# end
# end
# end
# end








