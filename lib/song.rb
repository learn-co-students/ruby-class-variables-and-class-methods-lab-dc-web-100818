require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
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
    gen_count = Hash.new(0)
    @@genres.each do |genre|
      gen_count[genre] += 1
    end
    gen_count
  end

  def self.artist_count
    art_count = Hash.new(0)
    @@artists.each do |artist|
      art_count[artist] += 1
    end
    art_count
  end

end
