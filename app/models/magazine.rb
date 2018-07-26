class Magazine #a magazine has many articles
  attr_accessor :name, :category
  attr_reader :article, :author

  @@all = []


  def initialize(name, category, article, author)
    @name = name
    @category = category
    @article = article
    @author = author
    @@all << self
  end

  # + returns an array of all magazines

  def self.all
    @@all
  end

   # + given a string of magazine name, returns the first magazine that matches

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  # + returns a list of the titles of all articles written for that magazine

  #the way i initialized a magazine, it only takes a single article instance, i would need to initialize a magazine instance with an array of articles in order to build this method, but i've run out of time
  #if I had an array of articles to sort though in each magazine, i would first iterate through each magazine to find the article instances and then iterate through the list of article instances to find the article.name using the Article class
  #to return a list of all the titles

  def self.article_titles



  end




end #end class
