class Author
    attr_accessor :first_name, :last_name, :items
    attr_reader :id
  
    def initialize(first_name, last_name)
      @id = Random.rand(1..1000)
      @first_name = first_name
      @last_name = last_name
      @items = []
    end
  
    def add_item(item)
      item.author = self
      items << item
    end
  end

  authors = Author.new(true, '2022-10-12', '2022-12-12')
  puts games.last_played_at
  puts games.publish_date
  puts games.can_be_archived?