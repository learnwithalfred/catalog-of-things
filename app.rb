require_relative 'options'

class App
  def menu
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
  end

  def run
    choice = 0

    while choice != 13

      menu

      print 'Please choose an option by entering a number:=> '

      choice = gets.chomp.strip.to_i

      selected(choice)

      print 'Press any key to continue....'

    end
  end
end
