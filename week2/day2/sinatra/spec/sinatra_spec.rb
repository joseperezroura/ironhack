require_relative("../lib/sinatra")

		
RSpec.describe Task do

	let :task do 
		Task.new("Buy Milk")
	end

	describe "#task" do 

		it "completed? is true" do		
		expect(task.completed?).to eq(false) 
		end
		
		it "completed! is true" do		
		expect(task.completed!).to eq(true) 
		end

		it "make_incomplete? is true" do		
		expect(task.make_incomplete?).to eq(true) 
		end



		# it "allows you to delete a task" do		
		
		# end
		# it "allows you to update tasks" do		
		
		# end
	
end
end		

# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2