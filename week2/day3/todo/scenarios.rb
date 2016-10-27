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
	
@tasks = my_list.tasks


	erb(:home)
	
end

get "/new_task" do 

	erb(:new_task)

end

post "/add_new_task" do 

blah = Task.new(params[:content])

my_list.add_task(blah)


	redirect("/")

end

post "/completed" do 

blah = Task.new(params[:completed])

my_list.complete!(blah)

redirect("/")

end



