require 'json'

module PreserveGenre
  def store_genres
    genrestore = []
    @genres.each do |genre|
      genrestore << { name: genre.name }
    end
    File.write('./json/genre.json', genrestore.to_json)
  end

  def load_genres
    genrestore = []
    genre_file = File.open('./json/genre.json')
    if File.exist?(genre_file) && File.read(genre_file) != ''
      data = JSON.parse(genre_file.read)
      data.each do |genre|
        genrestore << Genre.new(genre['name'])
      end
    else
      File.write(genre_file, '[]')
    end
    genrestore
  end
end
