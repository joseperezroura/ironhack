

require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?

enable(:sessions)

get "/save_to_session/:thing" do
session[:beverage] = params[:thing]
redirect to("/")
end

get "/" do 
	
	@drank = session[:beverage]
	erb(:home)
	
end

get "/hi" do 
	
	erb(:hipage)

end

get "/about" do 

	erb(:about)
	
end

get "/best_madmax" do 

	@movies = ["Mad Max", "Thunder Dome", "Fury Road", "Road Warrior"]
	

	erb(:best_madmax)
# binding.pry
end

get "/blah" do 
	"blaaaaaaah"
	
end

get "/dood" do 
	"doooooooooood"
	
end


