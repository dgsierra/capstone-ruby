require 'json'
require './Classes/book'

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