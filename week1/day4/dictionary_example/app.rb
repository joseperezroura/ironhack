require_relative("lib/wordchain.rb")





dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("cat", "dog")




# cat
# cot
# cog
# dog