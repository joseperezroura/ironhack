# server.rb
require "sinatra"

get "/" do
  erb(:home)
end

get "/functions" do
  erb(:functions)
end

post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f

  

  calc = Calculator.new

  result = calc.add(first, second)
  result = calc.subtract(first, second)
  result = calc.multiply(first, second)
  result = calc.divide(first, second)

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







