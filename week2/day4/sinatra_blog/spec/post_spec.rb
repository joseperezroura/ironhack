require_relative("../lib/post.rb")

RSpec.describe Post do 
	before(:each) do 
		@post1 = Post.new("post1", "post1text")
		@post2 = Post.new("post2", "post2text")
	end

	it("title returns title") do 
		expect(@post1.title).to eq("post1")
		expect(@post2.title).to eq("post2")
	end

	# it("#date returns date") do 
	# 	expect(@post1.date).to eq(Time.now)
	# 	expect(@post2.date).to eq(Time.now)

	# end

	it("#text returns text") do 
		expect(@post1.text).to eq("post1text")
		expect(@post2.text).to eq("post2text")
	end
end