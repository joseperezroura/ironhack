class MovieTrivia

	def initialize(search_results)
		@movies=search_results
	end 

	def filter_movies 

		filtered_movies = []
		
		@movies[0..15].each do |x|
			if x.poster != nil
				filtered_movies.push(x)
			end

		end
		filtered_movies[0..8]
	end

end