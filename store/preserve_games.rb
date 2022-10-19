require 'json'

module PreserveGame
  def store_games
    gamestore = []
    @games.each do |game|
      gamestore << { id: game.id,
                     multiplayer: game.multiplayer,
                     last_played_at: game.last_played_at,
                     publish_date: game.publish_date,
                     archived: game.archived }
    end
    File.write('./json/games.json', gamestore.to_json)
  end

  def load_games
    gamestore = []
    game_file = File.open('./json/games.json')
    if File.exist?(game_file) && File.read(game_file) != ''
      data = JSON.parse(game_file.read)
      data.each do |game|
        gamestore << Game.new(game['multiplayer'], game['last_played_at'], game['publish_date'])
      end
    else
      File.write(game_file, '[]')
    end
    game_file
  end
end
