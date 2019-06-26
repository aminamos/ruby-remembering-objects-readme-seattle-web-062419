require 'pry'

class Song
 
    @@all = []
   
    attr_accessor :name
   
    def initialize(name)
      @name = name
      @@all << self
    end
   
    def self.all
      @@all
    end

    def self.print
        Song.all.map do |x|
            p x.instance_variable_get(:@name)
        end
    end
end

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")

Song.print
