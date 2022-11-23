require 'json'
require '../book'

module BookData
  def load_book_data
    data = []
    file = './data/book_data.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |book|
        new_book = Book.new(book['publisher'], book['cover_state'], book['publish_date'])
        new_book.add_label(Label.new(book['title'], book['color']))
        data << new_book
      end
    end
    data
  end

  def save_book_data
    data = []
    @books.each do |book|
      data << { publisher: book.publisher, cover_state: book.cover_state, publish_date: book.publish_date,
                title: book.label.title, color: book.label.color }
    end
    File.write('./data/book_data.json', JSON.generate(data))
  end
end