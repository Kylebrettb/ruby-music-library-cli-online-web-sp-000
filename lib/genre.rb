class Genre
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
    Genre.all << self
  end
  def self.destroy_all
     @@all = []
  end
  def self.create(name)
   new_genre = self.new(name)
   new_genre.save
   new_genre
  end
end