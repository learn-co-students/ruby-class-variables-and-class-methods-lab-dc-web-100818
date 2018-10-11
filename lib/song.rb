require 'pry'

class Song 
  
  attr_reader :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genre_count_hash = {}
    @@genres.uniq.each do |genre_element|
      genre_count_hash[genre_element] = @@genres.count(genre_element)
    end 
    genre_count_hash
  end 
  
  def self.artist_count 
    artist_count_hash = {}
    @@artists.uniq.each do |artist_element|
      artist_count_hash[artist_element] = @@artists.count(artist_element)
    end 
    artist_count_hash  
  end 
  
end 