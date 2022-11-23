require_relative 'app'

def app_options
  puts '1 - List all books'
  puts '2 - List all games'
  puts '3 - List music albums'
  puts '4 - Create a book'
  puts '5 - Create a game'
  puts '6 - Create a music album'
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
    MusicAlbum.list_music_albums(@music_albums)
  when '4'
    book = Book.create_book
    @books << book
    puts "Book '#{book.name}' by #{book.author} created successfully" if @books.include?(book)
  when '5'
    game = Game.create_game
    @games << game
    puts "Game '#{game.name}' of gender #{game.gender} created successfully" if @games.include?(game)
  when '6'
    album = MusicAlbum.create_album
    @music_albums << album
    puts "Music Album '#{album.name}' by #{album.author} created successfully" if @music_albums.include?(album)
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.run
end

main
