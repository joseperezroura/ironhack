# server.rb
require "sinatra"

get "/" do
  erb(:home)
end

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  "Params data: " + params.inspect
end