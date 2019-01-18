class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @songs = []
    @name = name
  end
  def self.all
    @@all
  end
  def save
    Artist.all << self
  end
  def self.destroy_all
     @@all = []
  end
  
  def self.create(name)
    new_artist  = self.new(name)
    new_artist.save
    new_artist
  end
  
  def add_song(song)
   self.songs << song   
  end
end