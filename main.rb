require_relative 'app'

def app_options
  puts '1 - List all books'
  puts '2 - List all games'
  puts '3 - List music albums'
  puts '4 - List all movies'
  puts '5 - Create a book'
  puts '6 - Create a game'
  puts '7 - Create a music album'
  puts '8 - Create a movie'
  puts '9 - List all labels'
  puts '10 - List all genres'
  puts '11 - List all authors'
  puts '12 - List all sources'
  puts '13 - Exit'
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
    Movie.list_movies(@movies)
  when '5'
    book = Book.create_book
    @books << book
    puts "Book '#{book.name}' by #{book.author} created successfully" if @books.include?(book)
  when '6'
    game = Game.create_game
    @games << game
    puts "Game '#{game.name}' of gender #{game.gender} created successfully" if @games.include?(game)
  when '7'
    album = MusicAlbum.create_album
    @music_albums << album
    puts "Music Album '#{album.name}' by #{album.author} created successfully" if @music_albums.include?(album)
  when '8'
    movie = Movie.create_movie
    @movies << movie
    puts "Movie '#{movie.name}' of gender #{movie.gender} created successfully" if @movies.include?(movie)
  when '9'
    p(InfoData.load_info_data(@books, @games, @movies, @music_albums)).collect { |item| item['label'] }
  when '10'
    p(InfoData.load_info_data(@books, @games, @movies, @music_albums)).collect { |item| item['gender'] }
  when '11'
    p(InfoData.load_info_data(@books, @games, @movies, @music_albums)).collect { |item| item['author'] }
  when '12'
    p(InfoData.load_info_data(@books, @games, @movies, @music_albums)).collect { |item| item['source'] }
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.run
end

main
