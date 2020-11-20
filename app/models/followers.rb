class Follower

    attr_reader :name, :age, :life_motto
    
    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults 
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def join_cult(cult)
        if self.oath == nil
            puts "You have not taken an oath"
        else
            cult.followers << self
        end
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(integer)
        self.all.select {|follower| follower.age >= integer}
    end

    def take_oath
        oath = Oath.new(self, "hello")
        oath.take_oath
    end










end






