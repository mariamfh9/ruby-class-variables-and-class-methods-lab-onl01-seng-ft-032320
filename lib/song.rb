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
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end 