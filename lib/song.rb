class Song
  attr_accessor :count, :artists, :genres
  @@count = 0
  def initialize
    @@count +=1
    @@genres << genres
    @@artists << artists
  end
  def self.count
    @@count
  end 
  def self.genres
    @@genres = []
  end
  def self.artists
    @@artists = []
  end 
end 