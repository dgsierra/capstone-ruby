require 'date'

class Item
  attr_reader :publis_date, :id
  def initialize(name, gender, author, source, label, publis_date)
    @id = rand(1..100000)
    @gender = gender
    @author = author
    @source = source
    @label = label
    @publis_date = Date.parse(publis_date) # format for Dates: ('2017-01-01') - YYYY-MM-DD - ISO 8601
    @archived = nil
  end

  def can_be_archived?()
    @publis_date.year < Date.today.year - 10
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
# p test1.publis_date.year
# p test1.can_be_archived?
# p test1.move_to_archive
