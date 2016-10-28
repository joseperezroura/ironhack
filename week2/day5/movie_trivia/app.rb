require "sinatra"
require "sinatra/reloader"
require "imdb"

get "/" do 
	erb :home
end


get "/search_results" do 
	
 	the_search = Imdb::Search.new(params[:movie_term])

	@movies = the_search.movies

	puts @movies.inspect
	erb :results

end

