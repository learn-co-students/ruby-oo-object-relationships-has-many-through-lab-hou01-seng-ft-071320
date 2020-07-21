class Genre
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
        value.genre==self}
    end
    def artists
        self.songs.map{|value|
         value.artist}
     end
end