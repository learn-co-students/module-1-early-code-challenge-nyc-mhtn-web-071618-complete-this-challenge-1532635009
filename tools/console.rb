require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Manuel")
author2 = Author.new("Robert")
author3 = Author.new("Amanda")
author4 = Author.new("Christina")

article1 = Article.new("Climate Change")
article2 = Article.new("Trump")
article3 = Article.new("Montreal's construction")
article4 = Article.new("Night life in new york")

  # def initialize(name, category, article, author)

mag1 = Magazine.new("The New Yorker", "arts", article1, author1)
mag2 = Magazine.new("Gazette", "politics", article2, author2)
mag1 = Magazine.new("Badmash", "arts", article3, author3)
mag2 = Magazine.new("MTL Blog", "politics", article4, author4)




binding.pry

0
