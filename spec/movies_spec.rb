require_relative '../src/movie'

describe Movie do
  context 'should have a method can_be_archived?' do
    it 'should return true when the movie is silent' do
      movie = Movie.new('Pikachu', 'male', 'Tom Holland', 'Liberland', 'label5', '2010-1-5', true)
      expect(movie.can_be_archived?).to eq(true)
    end

    it 'should return true when the movie was published more than 10 years ago' do
      movie = Movie.new('Pikachu', 'male', 'Tom Holland', 'Liberland', 'label5', '2010-1-5', false)
      expect(movie.can_be_archived?).to eq(true)
    end
  end
end
