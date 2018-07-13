#Song.new("Lucifer", "Jay-Z", "rap" )
#Song.new("99 Problems", "Jay-Z", "rap")
#Song.new("hit me baby one more time", "Brittany Spears", "pop")



class Song

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def name
  @name
end

def artist
  @artist
end

def genre
  @genre
end

def self.genres
  @@genres.uniq
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  genre_hash = {}
  @@genres.each do |genre|
    if genre_hash[genre] != nil
      genre_hash[genre] = genre_hash[genre]+1
    else
      genre_hash[genre] = 1
    end
  end
  genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |artist|
    if artist_hash[artist] == nil
      artist_hash[artist] = 1
    else
      artist_hash[artist] = artist_hash[artist]+1
    end
  end
  artist_hash
end

end
