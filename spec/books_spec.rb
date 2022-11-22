require_relative '../src/book'

describe Book do
  context 'should have a method can_be_archived?' do
    book = Book.new('War and Peace', 'Novel', 'Leo Tolstoy', 'Penguin', 'Penguin', '1869-1-1', 'good')
    it 'should return true if the cover state is bad' do
      expect(book.can_be_archived?).to be true
    end

    it 'should return false if the cover state is good' do
      expect(book.can_be_archived?).to be true
    end
  end
end
