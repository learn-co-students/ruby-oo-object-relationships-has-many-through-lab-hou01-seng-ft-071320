class Song
    attr_reader :song, :artist, :genre
    @@all = []

    def initialize(song, artist, genre)
        @song = song
        @artist = artist
        @genre = genre
        @@all << self
    end
    
    def self.all
        @@all
    end
end