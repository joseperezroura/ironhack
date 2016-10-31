class Post
attr_reader(:title,:date,:text)

def initialize(title, text)
	@title = title
	@text = text
	@date = Time.now

end
      
   
end