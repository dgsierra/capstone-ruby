require_relative 'item'
# Child of class Item
class Movie < Item
  def initialize(name, gender, author, source, label, published_date, silent = nil)
    super(name, gender, author, source, label, published_date)
    @silent = silent
  end

  def can_be_archived?
    if super || (@silent == true)
      true
    else
      false
    end
  end
end

# new_movie = Movie.new("test4",'gender4','author4','source4','label4','2020-1-4', false)

# p new_movie.can_be_archived?
