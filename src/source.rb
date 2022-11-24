# Class that store the information about the origin of the Item
class Source
  def initialize(name)
    @id = "src-#{rand(1_000_000)}"
    @name = name
    @items = []
  end

  def add_item(item)
    return if @items.include?(item)

    @items.push(item)
  end
end

new_test = Source.new('test7')

p new_test
