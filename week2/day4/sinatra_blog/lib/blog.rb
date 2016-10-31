class Blog
attr_reader (:all_posts)

	def initialize
		@all_posts = []
	end

	def posts
		@all_posts
	end

end