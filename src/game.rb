require_relative 'item'
# Child class of item class - Game this help to create object Game
class Game < Item
  attr_accessor :name, :gender, :author, :source, :label, :published_date, :last_played_at
  attr_reader :type

  def initialize(name, gender, author, source, label, published_date, last_played_at = nil)
    super(name, gender, author, source, label, published_date)
    @last_played_at = last_played_at
    @multiplayer = false
    @type = 'game'
  end

  def can_be_archived?
    return unless validate_last_played_at(@last_played_at)

    super && (last_played_at < (Date.today - (365 * 2)))
  end

  def self.create_game
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
    print 'Last played at: '
    last_played = gets.chomp
    Game.new(name, gender, author, source, label, published_date, last_played)
  end

  def self.list_all_games(games)
    games.each do |game|
      puts "Title: '#{game.name}' Gender: #{game.gender}"
    end
  end

  private

  def validate_last_played_at(date)
    if date.nil?
      false
    else
      @last_played_at = Date.parse(date)
    end
  end
end
