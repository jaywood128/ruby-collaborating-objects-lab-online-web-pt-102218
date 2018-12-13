class Song


  attr_accessor :name , :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(filename)

    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
   artist = Artist.find_or_create_by_name(artist_name)
  song = Song.new(song_name)
   artist.add_song(song)
   song.artist = artist
   song
 end

end
