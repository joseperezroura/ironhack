require_relative("lib/Task.rb")
require_relative("lib/TodoList.rb")


my_list = TodoList.new

task1 = Task.new("Buy the milk")
task2 = Task.new("Do other stuff")

my_list.add_task(task1)
my_list.add_task(task2)
