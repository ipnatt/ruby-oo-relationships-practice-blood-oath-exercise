class BloodOath

    attr_reader :initiation_date, :follower, :cult

    @@all = []

    def initialize (follower, initiation_date, cult)
        @follower = follower
        @initiation_date = initiation_date
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

    def take_oath
        self.follower.oath = "done"
    end

end

