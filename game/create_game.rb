require_relative './games'
require_relative '../label/label'
require_relative '../item'

class CreateGame
  def initialize(game = 'unknown')
    @games = game
  end

  def add_game
    print 'is the game multiplayer ? write "y" if yes or "N" no [Y/N]: '
    multiplayer = gets.chomp.strip.upcase
    case multiplayer
    when 'Y'
      multiplayer = true
    when 'N'
      multiplayer = false
    end
    print 'Enter last date game played [yyyy-mm-dd] format: '
    last_played_at = gets.chomp.strip

    print 'Enter publish date in [yyyy-mm-dd] format: '
    publish_date = gets.chomp.strip

    game = Game.new(multiplayer, last_played_at, publish_date)
    game.move_to_archive
    @games << game

    puts 'Game created successfully'
  end
end
