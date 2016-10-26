

require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?



get "/" do 

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


