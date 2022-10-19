require_relative './music_album'
require_relative '../item'

module MusicAlbumModule
  def list_all_music_albums
    if @music_albums.empty?
      puts 'There is no album in the catalog'
    else
      puts 'Music Album(s) in the catalog'
      puts
      @music_albums.each_with_index do |music, index|
        print "#{index} Genre: '#{music.genre}', Publish Date: '#{music.publish_date}',"
        print " On sportify: '#{music.on_spotify}',  Archived: '#{music.archived}'"
        puts
      end
    end
  end
end
