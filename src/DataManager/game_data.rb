require '../../json'
require '../game'

module GamesData
  def load_games
    data = []
    file = './data/games.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |game|
        new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['name'])
        new_game.add_author(Author.new(game['author']))
        data << new_game
      end
    end
    data
  end

  def save_games
    data = []
    @games.each do |game|
      data << { multiplayer: game.multiplayer, last_played_at: game.last_played_at, author: game.author.name,
                publish_date: game.publish_date, name: game.name }
    end
    File.write('./data/games.json', JSON.generate(data))
  end
end