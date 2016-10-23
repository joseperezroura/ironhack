class Post
	attr_reader :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end 
	def publish_front_page
		puts "#{@title}"
		puts "Posted on #{@date} by #{@author}."
		puts "**************"
		puts "#{@text}"
		puts "----------------"
	end
end