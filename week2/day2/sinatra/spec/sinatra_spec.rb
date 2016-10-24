require_relative("../lib/sinatra")

		
RSpec.describe Task do

	let :task do 
		Task.new("Buy Milk")
	end

	describe "#task" do 

		it "completed? is true" do		
		expect(task.completed?("Buy Milk")).to eq(false) 
		end
		
		it "allows you to delete a task" do		
		
		end
		it "allows you to update tasks" do		
		
		end
	

end		

# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2