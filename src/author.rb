class Author
  def initialize(name, last_name)
    @id = "aut-#{rand(1_000_000)}"
    @name = name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
end
