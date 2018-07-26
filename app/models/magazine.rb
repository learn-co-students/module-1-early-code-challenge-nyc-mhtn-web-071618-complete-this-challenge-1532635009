require_relative 'article'
require 'pry'

class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    x = self.all.select do |i|
      i.name.downcase == name.downcase
    end
  end

  def article_titles
    x = Article.all.select do |i|
      if i.magazine == self
      i.title
      end
    end
  end
end
