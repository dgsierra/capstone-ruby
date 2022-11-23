require 'json'

class BookData
  def self.load_book_data(books)
    return books unless File.exist?('./src/data/book_data.json')

    object = JSON.parse(File.read('./src/data/book_data.json'))
    object.each do |book|
      book = Book.new(book['name'], book['gender'], book['author'], book['source'], book['label'], book['published_date'], book['cover_state'])
      books << book
    end
  end

  def self.save_book_data(books)
    data = []
    books.each do |book|
      book = {
        name: book.name,
        gender: book.gender,
        author: book.author,
        source: book.source,
        label: book.label,
        published_date: book.published_date,
        cover_state: book.cover_state
      }
      data << book
    end
    File.write('./src/data/book_data.json', JSON.pretty_generate(data, { indent: "\t", object_nl: "\n" }))
  end
end
