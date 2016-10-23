class Programmer 
	include Payable
	include CaffeineConsumer

	def program
		do_wonderful_things_with_computers
		receive_salary
		consume_caffeine
	end

	def do_wonderful_things_with_computers
		puts "Computers are siiiiiiiick!"
	end


end
