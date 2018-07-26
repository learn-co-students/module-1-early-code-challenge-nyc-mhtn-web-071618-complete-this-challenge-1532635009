class Article #an article belongs to an author and magazine

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_magazine_instance
    Magazine.all.find do |magazine|
      magazine.article == self
    end
  end

  # returns the author for that given article

  def find_author
    find_magazine_instance.author
  end

   # + returns the magazine for that given article

  def magazine
    find_magazine_instance.magazine
  end



end #end class
