require './book/create_book'
require './musicAlbum/create_music_album'
require_relative './label/label_module'
require_relative './book/book_module'
require_relative './musicAlbum/music_album_module'
require_relative './genre/genre_module'
require_relative './store/preserve_book'
require_relative './store/preserve_label'
require_relative './store/preserve_music'
require_relative './store/preserve_genre'

class Options
  include LabelModule
  include BookModule
  include GenreModule
  include MusicAlbumModule
  include BooksPreserve
  include LabelsPreserve
  include PreseveMusic
  include PreserveGenre

  def initialize
    @books = load_books
    @labels = load_labels
    @music_albums = load_musics
    @genres = load_genres
    @execute = CreateBook.new(@books, @labels)
    @music_execute = CreateMusicAlbum.new(@music_albums, @genres)
  end

  def show_options
    puts ['1 - List all books',
          '2 - List all music albums',
          '3 - List of games',
          '4 - List all genre',
          '5 - List all labels',
          '6 - List all authors',
          '7 - Add a book',
          '8 - Add a music album',
          '9 - Add a game',
          '0 - quit!']
  end

  def chosen_value(value)
    case value
    when '1'
      list_all_books
    when '2'
      list_all_music_albums
    when '3'
      puts 'list_games'
    when '4'
      list_all_genres
    when '5'
      list_all_labels
    when '6'
      puts 'list_authors'
    when '7'
      @execute.add_book
    when '8'
      @music_execute.add_music_album
    when '9'
      pust 'add_game'
    else
      puts 'Please enter a number between 1 and 0.'
    end
  end
end
