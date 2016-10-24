require_relative("../lib/fizz_buzzer")

		
RSpec.describe FizzBuzzer do

	describe "#fizz_buzz" do 
		let :the_fzbz do
			FizzBuzzer.new
		end


		it "prints the string of the number as long as it's not divisible by 3 or 5" do
			
			expect(the_fzbz.fizz_buzz(7)).to eq("7")   	
		end		

		it "prints the word Fizz for numbers divisible by 3" do

			expect(the_fzbz.fizz_buzz(9)).to eq("Fizz")
			# p the_fzbz.fizz_buzz(9) == "Fizz"
		end

		it "prints the word Buzz for numbers divisible by 5" do
			# p the_fzbz.fizz_buzz(10) == "Buzz"
			expect(the_fzbz.fizz_buzz(10)).to eq("Buzz")
		end

		it "prints the word FizzBuss for number divisible by 3 and 5" do
			expect(the_fzbz.fizz_buzz(15)).to eq("FizzBuzz")
		end
	end
end