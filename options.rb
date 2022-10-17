class Options
  def selected(choice)
    case choice
    when 1
      puts 'List all books selected'
    when 2
      puts 'list_music_album selected'
    when 3
      puts 'list_movies selected '
    when 4
      puts 'list_games selected '
    when 5
      puts 'list_genres selected'
    when 6
      puts 'list_labels'
    when 7
      puts 'list_authors'
    when 8
      puts 'list_sources'
    when 9
      puts 'create_book selected'
    when 10
      puts 'create_music_album selected'
    when 11
      puts 'create_movie selected'
    when 12
      puts 'create_game selected'
    when 13
      puts 'Thanks For Using Our Program =(MYZ Team)='
      exit
    else
      puts 'Invalid option'
    end
  end
end
