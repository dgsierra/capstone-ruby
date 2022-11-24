require_relative '../src/author'
require_relative '../src/book'
require_relative '../src/item'

describe Author do
  context 'should have a method add_item' do
    author = Author.new('Leo', 'Tolstoy')
    book = Book.new('War and Peace', 'Novel', 'Leo Tolstoy', 'Penguin', 'Penguin', '1869-1-1', 'good')
    it 'should add an item to the author' do
      author.add_item(book)
      expect(author.items).to include(book)
    end

    it 'should have attribute items' do
      expect(author).to respond_to(:items)
    end
  end
end
