require_relative '../src/game'

describe Game do
  context 'should have a method can_be_archived?' do
    it 'should return true wheater the game was last played more than 2 years ago' do
      game = Game.new('Pikachu', 'male', 'Tom Holland', 'Liberland', 'label5', '2010-1-5', '2018-11-20')
      expect(game.can_be_archived?).to eq(true)
    end
  end
end
