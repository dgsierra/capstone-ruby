require_relative 'item'

#  Child class of Item
class MusicAlbum < Item
  def initialize(name, gender, author, source, label, published_date, on_spotify = nil)
    super(name, gender, author, source, label, published_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && (@on_spotify == true)
  end
end

# music = MusicAlbum.new("test3",'gender3','author3','source3','label3','2020-1-3', true)

# p music.can_be_archived?
