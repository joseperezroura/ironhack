require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("movie.rb")

get "/" do 
	erb :home
end


get "/search_results" do 
	
 	the_search = Imdb::Search.new(params[:movie_term])

	movies = the_search.movies


	filtered_movies = MovieTrivia.new(movies)

	@movies = filtered_movies.filter_movies
	@random_movie = @movies.sample
	
	erb :results



end

