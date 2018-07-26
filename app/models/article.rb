require 'pry'

class Article

  attr_accessor :title, :author, :magazine

@@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end

  def author?
    self.author
  end

  def magazine?
    self.magazine
  end
end