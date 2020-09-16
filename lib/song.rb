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
    new_count = 0
    @@genre_count[genre] = new_count
      if @@genre_count.include?(genre)
        @@genre_count[genre] += 1
      else
      @@genre_count[genre] = 1 
  end
end
@@genre_count
end
  
  def self.artist_count 
  end 
  
  
end 