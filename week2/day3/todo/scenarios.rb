require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require_relative("lib/task.rb")
require_relative("lib/todoList.rb")


my_list = TodoList.new

task1 = Task.new("Buy milk")
task2 = Task.new("Walk dog")

my_list.add_task(task1)
my_list.add_task(task2)

# enable(:sessions)

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

get "/completed" do 

	erb(:home)

end

post "/completed" do 
	the_id = params[:whatever].to_i
	x = my_list.find_task_by_id(the_id)

	x.complete!

	redirect("/")

end

get "/deleted" do 

	erb(:home)

end

post "/deleted" do 
	the_id = params[:whatever_delete].to_i
	x = my_list.find_task_by_id(the_id)

	x.make_delete

	redirect("/")

end


