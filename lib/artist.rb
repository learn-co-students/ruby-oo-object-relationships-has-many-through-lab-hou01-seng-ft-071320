class Artist
    attr_accessor :name
    @@all =[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    def self.all
        @@all
    end

    def songs
        Song.all.find_all{|value|
        value.artist==self}
    end

    def new_song(name,genre)
        Song.new(name, self, genre)
    end

    def genres
       self.songs.map{|value|
        value.genre}
    end
end
