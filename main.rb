require_relative 'app'

def app_options
  puts '1 - List all books'
  puts '2 - Create a book'
  puts "\n"
end

# rubocop:disable Metrics/CyclomaticComplexity
def check_selection(response)
  case response
  when '1'
    Book.list_all_books(@books)
  when '2'
    book = Book.create_book
    @books << book
    puts "Book '#{book.name}' by #{book.author} created successfully" if @books.include?(book)
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.run
end

main
