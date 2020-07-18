require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Jenn")
guest2 = Guest.new("James")
guest3 = Guest.new("Jenny")
guest4 = Guest.new("Steph")
guest5 = Guest.new("Mary")
guest6 = Guest.new("Jim")

listing1 = Listing.new("Seattle")
listing2 = Listing.new("NYC")
listing3 = Listing.new("LA")
listing4 = Listing.new("LA")

t1 = Trip.new(listing1, guest1)
t2 = Trip.new(listing2, guest2)
t3 = Trip.new(listing2, guest3)
t4 = Trip.new(listing3, guest2)
t5 = Trip.new(listing3, guest3)
t6 = Trip.new(listing3, guest6)

Pry.start
