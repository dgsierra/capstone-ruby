require 'json'

class GamesData
  def self.load_games(games)
    return games unless File.exist?('./src/data/games.json')

    object = JSON.parse(File.read('./src/data/games.json'))
    object.each do |game|
      game = Game.new(game['name'], game['gender'], game['author'], game['source'], game['label'],
                      game['published_date'], game['last_played_at'])
      games << game
    end
  end

  def self.save_games(games)
    data = []
    games.each do |game|
      game = {
        name: game.name,
        gender: game.gender,
        author: game.author,
        source: game.source,
        label: game.label,
        published_date: game.published_date,
        last_played_at: game.last_played_at,
        type: game.type
      }
      data << game
    end
    File.write('./src/data/games.json', JSON.pretty_generate(data, { indent: "\t", object_nl: "\n" }))
  end
end
