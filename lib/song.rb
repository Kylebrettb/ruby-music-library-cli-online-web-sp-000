class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name,artist=nil, genre=nil)
    @genre = genre if genre
    @artist = artist if artist
    @name = name
  end
  def self.all
    @@all
  end
  def save
    Song.all << self
  end
  def self.destroy_all
     @@all = []
  end
  def self.create(name)
   new_song = self.new(name)
   new_song.save
   new_song
  end
end