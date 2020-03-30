class Song
  attr_accessor :count, :artists, :genres
  @@count = 0
  def initialize
    @@count +=1
    @@genres << 
  end
  def self.count
    @@count
  end 
  def self.genres
    @@genres = []
  end
end 