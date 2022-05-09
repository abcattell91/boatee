require 'faker'

puts "Cleaning up database..."
Boat.destroy_all
Booking.destroy_all
puts "Database cleaned"

Boat.create!(name: "Titanic", boat_type: "Ship", docked: "yes", location: "London", price: 100, berth: 200)
