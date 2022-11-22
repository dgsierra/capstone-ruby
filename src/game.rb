require_relative 'item'
# Child class of item class - Game this help to create object Game
class Game < Item
  attr_reader :last_played_at

  def initialize(name, gender, author, source, label, published_date, last_played_at = nil)
    super(name, gender, author, source, label, published_date)
    @last_played_at = last_played_at
    @multiplayer = false
  end

  def can_be_archived?
    if validate_last_played_at(@last_played_at)
      super && (last_played_at < (Date.today - (365 * 2)))
    else
      nil
    end
  end

  private

  def validate_last_played_at(date)
    if date.nil?
      false
    else
      @last_played_at = Date.parse(date)
      p @last_played_at
    end
  end
end

new_game = Game.new('test5', 'gender5', 'author5', 'source5', 'label5', '2010-1-5', '2020-11-20')

p new_game.can_be_archived?
