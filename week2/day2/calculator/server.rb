# server.rb
require "sinatra"

get "/" do
  erb(:home)
end

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "#{first} + #{second} = #{result}"
end

# post "/calculate_add" do
#   "Params data: " + params.inspect
# end

# post "/calculate_add" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   "#{first} + #{second}"
# end