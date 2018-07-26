class Author #an author has many articles

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def magazines #magazines in which an author has been published
    Magazine.all.select do |magazine|
      magazine.author == self
    end
  end

  def articles #returns a list of articles the author has written
    magazines.map do |magazine|
      magazine.article
    end
  end

  # given a title and a magazine, creates a new article and associates it with that author and that magazine.

  #author1.add_article(title, magazine)

  # def add_article(title, magazine)
  #   new_article = Article.new(title)
  #   Magazine.new(magazine, category, new_article, self)
  # end

# + returns the categories of the magazines for which the author has written
  def find_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end



end #end class
