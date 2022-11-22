require 'date'

class Item
  attr_reader :published_date, :id
  def initialize(name, gender, author, source, label, published_date)
    @id = rand(1..100000)
    @gender = gender
    @author = author
    @source = source
    @label = label
    @published_date = Date.parse(published_date) # format for Dates: ('2017-01-01') - YYYY-MM-DD - ISO 8601
    @archived = nil
  end

  def can_be_archived?()
    @published_date.year < Date.today.year - 10
  end

  def move_to_archive()
    if can_be_archived?()
      @archived = true
      p @archived
    end
  end

end

test1 = Item.new("test",'gender','author','source','label','2001-1-1')

# p test1.id
# p test1.published_date.year
# p test1.can_be_archived?
# p test1.move_to_archive
