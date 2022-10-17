class App
  def self.menu
    puts 'Welcome To the Catalog of things'

    puts 'Please enter option number 1 - 11 to begin'

    puts '1 - List all books'

    puts '2 - List all music albums'

    puts '3 - List all movies'

    puts '4 - List all games'

    puts '5 - List all genres'

    puts '6 - List all labels'

    puts '7 - List all authors'

    puts '8 - List all sources'

    puts '9 - Add a book'

    puts '10 - Add a music album'

    puts '11 - Add a movie'

    puts '12 - Add a game'

    puts '13 - Exit'
    Integer(gets.chomp)
  end

  loop do
    case menu
    when 1
      puts 'List all books selected'
    when 2
      puts 'list_music_album selected'
    when 3
      puts 'list_movies selected '
    when 4
      puts 'list_games selected '
    when 5
      puts 'list_genres selected'
    when 6
      puts 'list_labels'
    when 7
      puts 'list_authors'
    when 8
      puts 'list_sources'
    when 9
      puts 'create_book selected'
    when 10
      puts 'create_music_album selected'
    when 11
      puts 'create_movie selected'
    when 12
      puts 'create_game selected'
    when 13
      exit
    else
      puts "#{choice} Invalid option"
    end
  end
  def run
    choice = 1

    while choice != 13
      print 'Please choose an option by entering a number:=> '
      select # call the select method with user input

      print 'Press any key to continue....'

    end
  end
end
