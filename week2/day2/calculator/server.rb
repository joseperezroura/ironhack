# server.rb
require "sinatra"

require_relative("lib/calculator.rb")

get "/" do
  erb(:home)
end

get "/functions" do
  erb(:functions)
end



post "/calculate" do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  
  operation = params[:operation] # => "add, subtract, multiply, divide"
  calc = Calculator.new

  if params[:operation] == "add"
  	@operation = "+"
  	@result = calc.add(params[:first_number].to_f, params[:second_number].to_f)
  elsif params[:operation] == "subtract"
  	@operation = "-"
  	@result = calc.subtract(@first_number, @second_number)
  elsif params[:operation] == "multiply"
  	@operation = "*"
  	@result = calc.multiply(@first_number, @second_number)
  else params[:operation] == "divide"
  	@operation = "/"
  	@result = calc.divide(@first_number, @second_number)
 
   erb(:result)

 end

 # calc.add(params[:number1].to_f,params[:number2].to_f)
  

  # result = calc.add(first, second)
  # result = calc.subtract(first, second)
  # result = calc.multiply(first, second)
  # result = calc.divide(first, second)

end

# get "/add" do
#   erb(:add)
# end

# post "/calculate_add" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first + second
#   "#{first} + #{second} = #{result}"
# end


# get "/subtract" do
#   erb(:subtract)
# end

# post "/calculate_subtract" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first - second
#   "#{first} - #{second} = #{result}"
# end

# get "/multiply" do
#   erb(:multiply)
# end

# post "/calculate_multiply" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first * second
#   "#{first} * #{second} = #{result}"
# end

# get "/divide" do
#   erb(:divide)
# end

# post "/calculate_divide" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first / second
#   "#{first} / #{second} = #{result}"
# end







