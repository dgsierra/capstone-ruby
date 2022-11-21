require 'date'

class Item
  attr_reader :publis_date
  def initialize(name, gender, author, source, label, publis_date, archived)
    @id = id
    @gender = gender
    @author = author
    @source = source
    @label = label
    @publis_date = Date.parse(publis_date)
    @archived = archived
  end
  def id()
    @id = rand(1..100000)
  end

  def can_be_archived?()
    @publis_date.year < Date.today.year - 10
  end
end

test1 = Item.new("test",'gender','author','source','label','2020-1-1','archived?')

p test1.publis_date.year
p test1.can_be_archived?
