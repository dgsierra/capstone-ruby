require_relative 'item'

#  Child class of Item
class MusicAlbum < Item
  attr_accessor :name, :gender, :author, :source, :label, :published_date, :on_spotify
  def initialize(name, gender, author, source, label, published_date, on_spotify = nil)
    super(name, gender, author, source, label, published_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && (@on_spotify == true)
  end

  def self.create_album
    print 'Title: '
    name = gets.chomp
    print 'Gender: '
    gender = gets.chomp
    print 'Author: '
    author = gets.chomp
    print 'Source: '
    source = gets.chomp
    print 'Label: '
    label = gets.chomp
    print 'Published Date: '
    published_date = gets.chomp
    print 'Is On Spotify?: '
    on_spotify = gets.chomp
    MusicAlbum.new(name, gender, author, source, label, published_date, on_spotify)
  end

  def self.list_music_albums(albums)
    albums.each do |album|
      puts "Title: '#{album.name}' Author: #{album.author}"
    end
  end
end

# music = MusicAlbum.new("test3",'gender3','author3','source3','label3','2020-1-3', true)

# p music.can_be_archived?
