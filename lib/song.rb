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

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      genres[genre] ? genres[genre] += 1 : genres[genre] = 1
    end
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      artists[artist] ? artists[artist] += 1 : artists[artist] = 1
    end
    artists
  end

end
