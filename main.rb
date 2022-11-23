require_relative 'app'

def app_options
  puts '1 - List all books'
  puts '2 - List all games'
  puts '3 - Create a book'
  puts '4 - Create a game'
  puts "\n"
end

# rubocop:disable Metrics/CyclomaticComplexity
def check_selection(response)
  case response
  when '1'
    Book.list_all_books(@books)
  when '2'
    Game.list_all_games(@games)
  when '3'
    book = Book.create_book
    @books << book
    puts "Book '#{book.name}' by #{book.author} created successfully" if @books.include?(book)
  when '4'
    game = Game.create_game
    @games << game
    puts "Game '#{game.name}' of gender #{game.gender} created successfully" if @games.include?(game)
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.run
end

main
