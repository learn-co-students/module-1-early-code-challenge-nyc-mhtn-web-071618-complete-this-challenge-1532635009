require_relative 'article'
require 'pry'

class Author

  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    x = Article.all.select do |i|
      i.author == self
    end
  end

  def add_article(title, magazine)
    Article.new(title,self, magazine)
  end

  def find_specialties
    x = self.articles.map do |y|
        y.magazine
    end
    y = x.map do |i|
      i.category
    end
  end
end
