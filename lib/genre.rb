class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.find_all {|index| index.genre == self}
    end

    def artists
        Song.all.collect {|index| index.artist }
    end
end