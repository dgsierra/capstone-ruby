require_relative 'item'

# Child class of item
class Book < Item
  attr_accessor :name, :gender, :author, :source, :label, :cover_state
  def initialize(name, gender, author, source, label, published_date, cover_state = nil)
    super(name, gender, author, source, label, published_date)
    @cover_state = cover_state
  end

  def can_be_archived?
    if super || (@cover_state == 'bad')
      true
    else
      false
    end
  end

  def self.create_book
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
    print 'Cover State: '
    cover_state = gets.chomp
    Book.new(name, gender, author, source, label, published_date, cover_state)
  end

  def self.list_all_books(books)
    books.each do |book|
      puts "Title: '#{book.name}' Author: #{book.author}"
    end
  end
end

# my_book = Book.new("test2",'gender2','author2','source2','label2','2001-1-2', 'good')

# p my_book.can_be_archived?
