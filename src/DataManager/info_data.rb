require 'json'

class InfoData
  def self.load_info_data(books, games, movies, albums)
    return books unless File.exist?('./src/data/book_data.json')
    return games unless File.exist?('./src/data/games.json')
    return movies unless File.exist?('./src/data/movies.json')
    return albums unless File.exist?('./src/data/music_albums.json')

    books_obj = JSON.parse(File.read('./src/data/book_data.json'))
    games_obj = JSON.parse(File.read('./src/data/games.json'))
    movies_obj = JSON.parse(File.read('./src/data/movies.json'))
    albums_obj = JSON.parse(File.read('./src/data/music_albums.json'))

    books_obj + games_obj + movies_obj + albums_obj
    # ali = books_obj + games_obj + movies_obj + albums_obj
    # p ali.collect { |item| item['label'] }
  end
end
