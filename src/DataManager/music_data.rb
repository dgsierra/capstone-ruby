require 'json'
require '../music_album'

module MusicAlbumsData
  def load_music_albums
    data = []
    file = './data/music_albums.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |album|
        new_album = MusicAlbum.new(album['publish_date'], album['on_spotify'])
        new_album.add_genre(Genre.new(album['genre']))
        data << new_album
      end
    end
    data
  end

  def save_music_albums
    data = []
    @music_albums.each do |album|
      data << { publish_date: album.publish_date, on_spotify: album.on_spotify, genre: album.genre.name }
    end
    File.write('./data/music_albums.json', JSON.generate(data))
  end
end
