Rspec.describe PasswordChecker do 
	describe "#check_password" do 
		it "returns true for valid passwords" do 
			checker = PasswordChecker.new

			
			expect( checker.check_password("nizar@example.com", "aB76*%cz#3")).to eq(true)
		end

		it "returns false for passwords without shorter than 8 characters" do 
			# Example "aB7$"
		end

		it "returns false for passwords without letters" do
			# EXAMPLE "6!7*676@"
		end

		it "returns false for passwords without numbers" do
			# EXAMPLE "aBphg74%"
		end

		it "returns false for passwords without symbols" do
			# EXAMPLE "aBphg74ss"
		end	
			
		it "returns false for passwords without lowercase letters" do
			# EXAMPLE "AB&U*#SE"
		end	

		#BONUS
		it "returns false for passwords with email domain" do
			# EXAMPLE ""
		end	

		it "returns false for passwords with email username" do
			# EXAMPLE ""
		end	
	end
end






