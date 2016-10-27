require "sinatra"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new(...)
blog.add_post Post.new(...)
blog.add_post Post.new(...)

get "/" do 
	#list of posts
	@posts = blog.posts

	erb(:home)
end