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
