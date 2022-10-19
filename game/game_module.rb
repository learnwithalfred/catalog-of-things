require_relative './games'
require_relative '../item'

module GameModule
  def list_all_games
    if @games.empty?
      puts 'There is no games in the catalog'
    else
      puts 'Game(s) in the catalog'
      puts
      @games.each_with_index do |game, index|
        print "#{index} multipliyer: '#{game.multiplayer}', Last Played: '#{game.last_played_at}',"
        print " publish date: '#{game.publish_date}'"
        puts
      end
    end
  end
end
