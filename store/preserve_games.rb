require 'json'

module GamesPreserve
    def store_games(game)
        gamestore = { id: game.id, multiplayer: game.multiplayer, \
                  last_played_at: game.last_played_at, \
                  publish_date: game.publish_date }
    
        file = File.size('./json/games.json').zero? ? [] : JSON.parse(File.read('./json/games.json'))
        file.push(store)
        File.write('./json/games.json', JSON.pretty_generate(file))
      end
    
  end