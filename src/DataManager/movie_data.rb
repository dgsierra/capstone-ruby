require 'json'
class MovieData
  def self.load_movie_data(movies)
    return movies unless File.exist?('./src/data/movies.json')

    object = JSON.parse(File.read('./src/data/movies.json'))
    object.each do |movie|
      movie = Movie.new(movie['name'], movie['gender'], movie['author'], movie['source'], movie['label'], movie['published_date'], movie['silent'])
      movies << movie
    end
  end

  def self.save_movie_data(movies)
    data = []
    movies.each do |movie|
      movie = {
        name: movie.name,
        gender: movie.gender,
        author: movie.author,
        source: movie.source,
        label: movie.label,
        published_date: movie.published_date,
        silent: movie.silent
      }
      data << movie
    end
    File.write('./src/data/movies.json', JSON.pretty_generate(data, { indent: "\t", object_nl: "\n" }))
  end
end
