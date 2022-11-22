require 'date'
# Main class for the project, parent of all other classes
class Item
  attr_reader :published_date
  attr_accessor :id

  def initialize(name, gender, author, source, label, published_date)
    @id = rand(1..1_000_000)
    @name = name
    @gender = gender
    @author = author
    @source = source
    @label = label
    @published_date = Date.parse(published_date) # format for Dates: ('2017-01-01') - YYYY-MM-DD - ISO 8601
    @archived = nil
  end

  def can_be_archived?
    @published_date < (Date.today - (365 * 10))
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
  end
end
