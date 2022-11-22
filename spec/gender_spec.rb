require_relative '../src/gender'
require_relative '../src/author'
require_relative '../src/book'
require_relative '../src/item'

describe Gener do
  context 'It should create a new Gener and add an item to it' do
    new_genre = Gener.new('Novel')
    it 'should return a new Gener' do
      expect(new_genre).to be_a(Gener)
    end
  end
end
