require_relative './genre'

module GenreModule
  def list_all_genres
    if @genres.empty?
      puts 'There is no genres'
    else
      puts 'List of genres'
      puts
      @genres.each_with_index do |genre, index|
        puts "#{index}) Genre name: '#{genre.name}'"
        puts
      end
    end
  end
end
