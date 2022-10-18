require 'rspec'
require_relative './games'

RSpec.describe 'Game class' do
  before :each do
    @games = Game.new(true, '2022-10-12', '2022-12-12')
  end

  describe 'Game class instance attributes' do
    it 'should return correct value for multiplayer' do
      expect(@games.multiplayer).to eq true
    end

    it 'should return correct value for last played date' do
      expect(@games.last_played_at.to_s).to eq '2022-10-12'
    end

    it 'should return correct value for publish date' do
      expect(@games.publish_date.to_s).to eq '2022-12-12'
    end
  end
end