class Label
  def initialize(title,color)
    @id = "src-#{rand(1_000_000)}"
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
end
