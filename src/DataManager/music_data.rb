require 'json'

class MusicAlbumsData
  def self.load_music_data(albums)
    return albums unless File.exist?('./src/data/music_albums.json')

    object = JSON.parse(File.read('./src/data/music_albums.json'))
    object.each do |album|
      album = MusicAlbum.new(album['name'], album['gender'], album['author'], album['source'], album['label'], album['published_date'], album['on_spotify'])
      albums << album
    end
  end

  def self.save_music_data(albums)
    data = []
    albums.each do |album|
      album = {
        name: album.name,
        gender: album.gender,
        author: album.author,
        source: album.source,
        label: album.label,
        published_date: album.published_date,
        on_spotify: album.on_spotify
      }
      data << album
    end
    File.write('./src/data/music_albums.json', JSON.pretty_generate(data, { indent: "\t", object_nl: "\n" }))
  end
end
