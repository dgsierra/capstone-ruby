# frozen_string_literal: true

require 'date'
# Main class for the project, parent of all other classes
class Item
  attr_reader :published_date, :id
  @@id_counter = 0
  def initialize(_name, gender, author, source, label, published_date)
    @id = @@id_counter
    @@id_counter += 1
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
    p @archived
  end
end

# test1 = Item.new('test', 'gender', 'author', 'source', 'label', '2001-1-1')

# p test1.id
# p test1.published_date.year
# p test1.can_be_archived?
# p test1.move_to_archive
