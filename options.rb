require './book/create_book'
require './musicAlbum/create_music_album'
require './game/create_game'
require_relative './label/label_module'
require_relative './game/game_module'
require_relative './book/book_module'
require_relative './musicAlbum/music_album_module'
require_relative './genre/genre_module'
require_relative './store/preserve_book'
require_relative './store/preserve_label'
require_relative './store/preserve_music'
require_relative './store/preserve_genre'
require_relative './store/preserve_game'
require_relative './author/author_module'
require_relative './store/preserve_author'

class Options
  include LabelModule
  include BookModule
  include GenreModule
  include MusicAlbumModule
  include GameModule
  include BooksPreserve
  include LabelsPreserve
  include PreseveMusic
  include PreserveGenre
  include GamesPreserve
  include AuthorsPreserve
  include AuthorModule

  def initialize
    @books = load_books
    @labels = load_labels
    @music_albums = load_musics
    @games = load_games
    @authors = load_authors

    @genres = load_genres
    @execute = CreateBook.new(@books, @labels)
    @music_execute = CreateMusicAlbum.new(@music_albums, @genres)
    @exec_game = CreateGame.new(@games, @authors)
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
      list_games
    when '4'
      list_all_genres
    when '5'
      list_all_labels
    when '6'
      list_authors
    when '7'
      @execute.add_book
    when '8'
      @music_execute.add_music_album
    when '9'
      @exec_game.add_game
    else
      puts 'Please enter a number between 1 and 0.'
    end
  end
end
