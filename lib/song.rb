class Song
  attr_accessor :name, :artists, :genres
  @@count = 0
 
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres = []
  end
  
  def self.artists
    @@artists = []
  end 
  
   def initialize(name, artist, genre)
   @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
   def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
end 