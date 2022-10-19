require 'json'

module PreseveMusic
  def store_musics
    musicstore = []
    @music_albums.each do |music|
      musicstore << { id: music.id,
                      on_spotify: music.on_spotify,
                      publish_date: music.publish_date,
                      archived: music.archived, genre: music.genre }
    end
    File.write('./json/music.json', musicstore.to_json)
  end

  def load_musics
    musicstore = []
    music_file = File.open('./json/music.json')
    if File.exist?(music_file) && File.read(music_file) != ''
      data = JSON.parse(music_file.read)
      data.each do |music|
        musicstore << MusicAlbum.new(music['on_spotify'], music['publish_date'], music['genre'])
      end
    else
      File.write(music_file, '[]')
    end
    musicstore
  end
end
