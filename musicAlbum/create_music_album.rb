require_relative './music_album'
require_relative '../genre/genre'
require_relative '../item'

class CreateMusicAlbum
  def initialize(music_album = 'unknown', genre = 'unknown')
    @music_albums = music_album
    @genres = genre
  end

  def user_input
    print 'Enter publish date in [yyyy-mm-dd] format: '
    publish_date = gets.chomp.strip
    puts 'Choose a Genre or create your own Genre: '
    @genres.each_with_index do |genre, idx|
      puts "Serial No: #{idx + 1}) #{genre.name}"
    end
    publish_date
  end

  def add_music_album
    spot = spotify
    pub_date = user_input
    new_genre = gets.chomp.strip.to_i
    if new_genre.zero?
      genre = create_new_genre
      name = create_new_genre.name
    else
      name = @genres[new_genre - 1].name
    end
    music_album = MusicAlbum.new(spot, name, pub_date)
    music_album.move_to_archive
    @music_albums << music_album
    unless genre.nil?
      genre.add_item(music_album)
      music_album.add_genre(genre)
    end
    puts 'Music Album created successfully'
  end

  def spotify
    print 'Choose wheither the music is on spotify ? [Y/N]: '
    on_spotify = gets.chomp.strip.upcase
    case on_spotify
    when 'Y'
      on_spotify = true
    when 'N'
      on_spotify = false
    else
      puts 'Please enter "Y" or "N".'
    end
    on_spotify
  end

  def create_new_genre
    print 'Please give a genre name to your music Album: '
    name = gets.chomp.strip.upcase
    genre = Genre.new(name)
    @genres << genre
    genre
  end
end
