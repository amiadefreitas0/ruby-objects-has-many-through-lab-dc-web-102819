#class Artist
require 'pry'
class Artist
    #initialize name(reader) @@all
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    #instance method new_song
    #take in name and genre  create a new song associated 
    # w/ name and genre
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    #instance method songs
    #returns all the songs associated with artist
    def songs
        Song.all.select do |song|
            # binding.pry
            song.artist == self
        
        end
    end

    #instance method genres
    #iterates over that artist's songs and
    # collects the genre of each song.
    def genres
        all_genres = self.songs.map do |song|
            song.genre
        end
        # binding.pry
    end
end
