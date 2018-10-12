require 'pry'
class Song

@@count = 0
@@genres = []
@@artists = []



attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		
		@name = name
		@artist = artist
		@genre = genre
		@@count +=1
		@@genres << self.genre
		@@artists << self.artist
	end


	def self.artists
		@@artists.uniq!
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq!
	end

	def self.genre_count
		count = {}
		@@genres.each do |genre|
			if count.key?(genre)
				count[genre] +=1
			else 
				count[genre] = 1
			end	
		end
		count
	end

	def self.artist_count
		artist_count = {}
		@@artists.each do |artist|
			if artist_count.key?(artist)
				artist_count[artist] += 1
			else
				artist_count[artist] = 1
			end
		end
		artist_count
	end



end

