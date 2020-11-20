require_relative '../config/environment.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/followers.rb'
require_relative '../app/models/bloodoath.rb'

def reload
  load 'config/environment.rb'
end


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
flatiron = Cult.new("flatiron", "Montana", 2000, "hi")
# seattle = Cult.new("seattle", "Washington", 2005, "hi")
irvin = Follower.new("irvin", 24, "hello")
# seattle.recruit_follower(irvin)
irvin.take_oath
irvin.join_cult(flatiron)


# binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

