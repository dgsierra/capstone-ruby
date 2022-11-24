require_relative 'item'
# Child of class Item
class Movie < Item
  attr_accessor :name, :gender, :author, :source, :label, :published_date, :silent

  def initialize(name, gender, author, source, label, published_date, silent = nil)
    super(name, gender, author, source, label, published_date)
    @silent = silent
  end

  def can_be_archived?
    if super || (@silent == true)
      true
    else
      false
    end
  end

  def self.create_movie
    print 'Title: '
    name = gets.chomp
    print 'Gender: '
    gender = gets.chomp
    print 'Author: '
    author = gets.chomp
    print 'Source: '
    source = gets.chomp
    print 'Label: '
    label = gets.chomp
    print 'Published Date: '
    published_date = gets.chomp
    print 'Is Silent?: '
    silent = gets.chomp
    Movie.new(name, gender, author, source, label, published_date, silent)
  end

  def self.list_movies(movies)
    movies.each do |movie|
      puts "Title: '#{movie.name}' Gender: #{movie.gender}"
    end
  end
end

# new_movie = Movie.new("test4",'gender4','author4','source4','label4','2020-1-4', false)

# p new_movie.can_be_archived?
