class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name, id = Random.rand(1..1000))
    @name = name
    @id = id
    @items = []
  end

  def add_item(item)
    item.genre = self
    @items << item
  end
end
