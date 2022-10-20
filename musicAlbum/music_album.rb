require './item'
class MusicAlbum < Item
  attr_accessor :on_spotify
  attr_reader :id

  def initialize(on_spotify, genre, publish_date)
    super(publish_date, archived, id)
    @on_spotify = on_spotify
    @genre = genre
    @publish_date = publish_date
    @id = Random.rand(1..1000)
  end

  def can_be_archived?
    super || @on_spotify
  end
end
