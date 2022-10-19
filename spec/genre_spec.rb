require './genre/genre'
require './item'

describe Genre do
  before :each do
    @genre = Genre.new('Comedy')
    @item = Item.new(2, 'John Deo', 'Kumerica', @genre, '2022-01-01')
    @genre.add_item(@item)
  end

  describe '#new' do
    it 'it should return an instance of Genre object' do
      expect(@genre).to be_instance_of Genre
    end

    it 'it should return an instance of Item object' do
      expect(@item).to be_instance_of Item
    end
  end

  it 'it should return one item' do
    expect(@genre.items.length).to eql 1
  end
end
