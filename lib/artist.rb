require 'pry'
class Artist
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.find_all do |index| 
            index.artist.name == self.name 
        end
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres
        Song.all.collect{|index| index.genre}
    end
end