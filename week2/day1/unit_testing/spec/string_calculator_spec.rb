require_relative("../lib/string_calculator")

RSpec.describe StringCalculator do

	describe "#add" do 
		it "adds two numbers separated by commas" do
			the_calc = StringCalculator.new
			# p the_calculator.add("7,7")  ==  14
			expect(the_calc.add("7,7")).to eq(14)   

			
			# p the_calculator.add("8,4") == 12
			expect(the_calc.add("8,4")).to eq(12)
		end		
	end	
end
