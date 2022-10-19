require './musicAlbum/music_album'
require './genre/genre'

describe MusicAlbum do
  before :each do
    @genre = Genre.new('Gospel')
    @album = MusicAlbum.new(true, 'Comedy', '2015-09-05')
    @album2 = MusicAlbum.new(false, 'Thriller', '2015-09-05')

  end

  it 'It should an instance Book object' do
    expect(@album).to be_instance_of MusicAlbum
  end

  it 'should return true when on_spotify is true' do
    expect(@album.can_be_archived?).to eql true
  end

  it 'should return false when on_spotify is false' do
    expect(@album2.can_be_archived?).to eql false
  end

end
