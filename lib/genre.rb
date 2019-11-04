require 'pry'
class Genre
    #initialize name song @@all
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self 
    end 
    
    def self.all
        @@all
    end
    def songs
        # binding.pry
    
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
       self.songs.map do |song|
            # binding.pry
            song.artist
        end
    end
end