require_relative("../lib/lexi.rb")

RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
    before :each do
    @lexi = Lexiconomitron.new
	end	

#=======================================================

    it "removes every letter t from the input" do
    
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    # it "reverses the individual words within an array of words" do
    #    expect(@lexi.reverse_words(["This", "is", "a", "boring", "test"])).to eq(["sihT", "si", "a", "gnirob", "tset"])
    # end

    it "removes the letter t from the words within the new array" do 
       expect(@lexi.reverse_words(["This", "is", "a", "boring", "test"])).to eq(["sih", "si", "a", "gnirob", "se"])
 	end



end
end