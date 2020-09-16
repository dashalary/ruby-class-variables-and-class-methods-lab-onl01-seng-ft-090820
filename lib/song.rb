class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre 
    @name = name 
    @artist = artist
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count 
    @@genres.each do |genre|
      if @@genre_count.include?(genre) == false
        @@genre_count[genre] = 1 
      else
      @@genre_count[genre] = @@genres.count
    end 
    @@genre_count
  end
  
  def self.artist_count 
  end 
  
  
end 