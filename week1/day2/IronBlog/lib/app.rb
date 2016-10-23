require_relative("lib/blog.rb")
require_relative("lib/post.rb")


blog = Blog.new("Post 1")



blog.add_post Post.new("Miami", "January Fifth", "Hello!", "Starbucks")
blog.add_post Post.new("Post title 1", "date", "text", "Sponsored")


puts blog.publish_front_page



#-----------------------Plain Blog------------------------

# Post title 1
# **************
# Post 1 text
# ----------------
# Post title 2
# **************
# Post 2 text
# ----------------
# Post title 3
# **************
# Post 3 text
# ----------------


#-----------------------Sponsored Blog-----------------------

# Post title 1
# **************
# Post 1 text
# ----------------
# ******Post title 2******
# **************
# Post 2 text
# ----------------
# Post title 3
# **************
# Post 3 text
# ----------------


#-----------------------Blog with 8 Posts_______________________

# Post title 1
# **************
# Post 1 text
# ----------------
# Post title 2
# **************
# Post 2 text
# ----------------
# Post title 3
# **************
# Post 3 text
# ----------------

# 1  2  3

# > next
# Post title 4
# **************
# Post 4 text
# ----------------
# Post title 5
# **************
# Post 5 text
# ----------------
# Post title 6
# **************
# Post 6 text
# ----------------

# 1  2  3

# > next
# Post title 7
# **************
# Post 7 text
# ----------------
# Post title 8
# **************
# Post 8 text
# ----------------

# 1  2  3