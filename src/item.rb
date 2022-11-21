class Item
  def initialize(name, gender, author, source, label, publis_date, archived)
    @id = id
    @gender = gender
    @author = author
    @source = source
    @label = label
    @publis_date = publis_date
    @archived = archived
  end
  def id()
    @id = rand(1..100000)
  end
end

test1 = Item.new("test",'gender','author','source','label','publis_date','archived?')

p test1.id
