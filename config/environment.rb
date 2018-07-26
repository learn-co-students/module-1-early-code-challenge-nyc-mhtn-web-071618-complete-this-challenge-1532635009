require 'bundler/setup'
Bundler.require
require 'pry'
require_all 'app'




vogue = Magazine.new('Vogue', 'fashion')
marie_claire = Magazine.new('Marie Claire', 'fashion')
shape = Magazine.new('Shape', 'fitness')
berlin_hipster = Magazine.new('Berlin Hipster', 'photography')

alex = Author.new('Alex')
jordan = Author.new('Jordan')
max = Author.new('Max')


article1 = Article.new('Color Blocking', jordan, vogue)
article2 = Article.new('Skin Care', alex, marie_claire)
article3 = Article.new('Make-up', alex, marie_claire)
article4 = Article.new('Workout', alex, shape)
article5 = Article.new('Cigarettes', max, berlin_hipster)



binding.pry



Article.all













