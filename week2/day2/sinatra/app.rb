require "sinatra"

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

	@movies = ["Mad Max", "Thunderdome", "Fury Road", "Road Warrior"]
	
	erb(:best_madmax)

end


