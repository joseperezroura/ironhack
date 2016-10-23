class Designer 
	include Payable
	include CaffeineConsumer

	def design_things
		select_typography
		select_colors
		receive_salary
		consume_caffeine
	end

	def select_typography
		puts "I like the font helvetica!"
	end

	def select_colors
		puts "I love sky blue"
	end


end