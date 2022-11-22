require 'game'

describe Game do
  context 'testing the game' do
    before :each do
      @game = Game.new(false, '2008-01-01', '2005-01-01')
    end

    it 'Should be a instance of Game' do
      expect(@game).to be_a(Game)
    end

    it 'Check if it is multiplayer' do
      expect(@game.multiplayer).to be(false)
    end

    it 'Check the last played date' do
      expect(@game.last_played_at).to eq('2008-01-01')
    end

    it 'should have attributes' do
      expect(@game).to have_attributes(multiplayer: false, last_played_at: '2008-01-01')
    end

    it 'should set a value of true to multiplayer' do
      @game.multiplayer = true
      expect(@game.multiplayer).to be(true)
    end
  end
end