class Song
# Keep track of:
# => songs created (counter/integer)
# => Artists of existing songs (array)
# => Genres of existing songs (array)
# => number of songs in each Genre (hash)
# => number of songs for each artist (hash)

  @@count = 0
  @@genres= []
  @@artists= []


  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @@count += 1

    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq #uniq (unique) method returns an array by removing duplicate values
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_counts = {}
    @@genres.each do |genre|
      if genre_counts.key?(genre)
        genre_counts[genre] += 1
      else
        genre_counts[genre] = 1
      end
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist|
      if artist_counts.key?(artist)
        artist_counts[artist] += 1
      else
        artist_counts[artist] = 1
      end
    end
    artist_counts
  end

end
