class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        @followers << follower
    end

    def cult_population
        @followers.length
    end

    def find_by_name(name)
        @@all.select {|cult| cult.name == name}
    end

    def find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end




    def self.all
        @@all
    end
end






