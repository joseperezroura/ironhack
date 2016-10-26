require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require_relative("lib/task.rb")
require_relative("lib/todoList.rb")


my_list = TodoList.new

task1 = Task.new("Buy the milk")
task2 = Task.new("Do other stuff")

my_list.add_task(task1)
my_list.add_task(task2)



enable(:sessions)

get "/" do 
	
	erb(:home)
	
end



get "/about" do 

	erb(:about)
	
end

