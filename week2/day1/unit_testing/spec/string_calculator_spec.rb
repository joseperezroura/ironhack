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
		
		it "returns the number for a single number" do
			the_calc = StringCalculator.new
			# p the_calculator.add("6") == 6
			expect(the_calc.add("6")).to eq(6)
		end

		it "returns 0 for the empty string" do
			the_calc = StringCalculator.new
			# p the_calculator.add("") == 0
			expect(the_calc.add("")).to eq(0)
		end
		it "returns 0 when no argument given" do
			the_calc = StringCalculator.new
			expect(the_calc.add()).to eq(0)
		end
	end	
end
