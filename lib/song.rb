class Song
    #initialize name artist and genre @@all
    @@all =[]
    attr_accessor :artist, :genre
    attr_reader :name 
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@all << self
    end
    
    def self.all
        @@all
    end

    #instances method genre
end