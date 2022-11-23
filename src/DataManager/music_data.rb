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

