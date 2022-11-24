require_relative './src/author'
require_relative './src/book'
require_relative './src/game'
require_relative './src/label'
require_relative './src/music_album'
require_relative './src/movie'
require_relative './src/item'
require_relative './src/DataManager/book_data'
require_relative './src/DataManager/game_data'
require_relative './src/DataManager/music_data'
require_relative './src/DataManager/movie_data'
require_relative './src/DataManager/info_data'
require 'json'

class App
  def initialize()
    @books = []
    @games = []
    @music_albums = []
    @movies = []
  end

  def run
    BookData.load_book_data(@books)
    GamesData.load_games(@games)
    MusicAlbumsData.load_music_data(@music_albums)
    MovieData.load_movie_data(@movies)
    InfoData.load_info_data(@books, @games, @movies, @music_albums)
    user_input = 0
    puts "####\nWelcome to the School Library Ruby App!\n####"
    while user_input != '13'
      puts "Choose a number from the options below:\n"
      app_options
      print 'Enter Option [number]: '
      user_input = gets.chomp
      puts "\n\n"
      check_selection(user_input)
    end
    puts "Exiting, thanks for using this app!\n\n" if user_input == '9'
    BookData.save_book_data(@books)
    GamesData.save_games(@games)
    MusicAlbumsData.save_music_data(@music_albums)
    MovieData.save_movie_data(@movies)
  end
end
