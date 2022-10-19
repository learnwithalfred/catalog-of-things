require './game/game'
require './item'

describe 'Game class' do
  before :each do
    @games = Game.new('2022-12-12', true, '2022-10-12', "no", "Williams")
    @fortnite = Game.new('2011-12-21', true, '2019-12-25', "no", 'john')
    @fifa = Game.new('2020-04-21', true, '2022-04-25', "no", 'samuel')
  end
    context 'Test for class Game' do
    it 'should be an instance of class game' do
      expect(@fortnite).to be_an_instance_of Game
    end

    it 'can_be_archived? return true' do
      expect(@fortnite.can_be_archived?).to eq(true)
    end

    it 'can_be_archived? return false' do
      expect(@fifa.can_be_archived?).to eq(false)
    end
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
