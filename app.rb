require './options'

class App
  def initialize
    @options = Options.new
  end

  def run
    until @options.show_options
      value = gets.chomp
      if value == '0'
        puts 'Thank You for using this app!'
        break
      end
      @options.chosen_value(value)
      @options.store_books
      @options.store_labels
      @options.store_musics
      @options.store_genres
    end
  end
end
