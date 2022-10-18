require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    super(genre, author, source, label, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_date = publish_date
  end

  def can_be_archived?
    Date.parse(@last_played_at) < Date.today - 365
  end
end

# games = Game.new(true, '2022-10-12', '2022-12-12')
# puts games.last_played_at
# puts games.publish_date
# puts games.can_be_archived?