require_relative 'item'

# Child class of item
class Book < Item
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
end

# my_book = Book.new("test2",'gender2','author2','source2','label2','2001-1-2', 'good')

# p my_book.can_be_archived?
