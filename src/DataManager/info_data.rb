require 'json'

class InfoData
  def self.load_info_data(books, games, movies, albums)
    return books unless File.exist?('./src/data/book_data.json')
    return games unless File.exist?('./src/data/games.json')
    return movies unless File.exist?('./src/data/movies.json')
    return albums unless File.exist?('./src/data/music_albums.json')

    booksObj = JSON.parse(File.read('./src/data/book_data.json'))
    gamesObj = JSON.parse(File.read('./src/data/games.json'))
    moviesObj = JSON.parse(File.read('./src/data/movies.json'))
    albumsObj = JSON.parse(File.read('./src/data/music_albums.json'))

    booksObj + gamesObj + moviesObj + albumsObj
    # ali = booksObj + gamesObj + moviesObj + albumsObj
    # p ali.collect { |item| item['label'] }
  end
end
