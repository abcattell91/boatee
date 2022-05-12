require 'faker'

puts "Cleaning up database..."
Boat.destroy_all
Booking.destroy_all
puts "Database cleaned"

puts 'Creating boats....'
100.times do
  Boat.create!(
    name: Faker::Name.name,
    docked: Faker::Boolean.boolean,
    location: Faker::Address.street_address,
    boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
    price: rand(50..999),
    guests: rand(1..100),
    image_url: ["https://tinyurl.com/44tt2rk5", "https://tinyurl.com/yc5xahaj", "https://tinyurl.com/3nbv4thh", "https://tinyurl.com/muyf46z8", "https://tinyurl.com/yw8e65ub",
                  "https://tinyurl.com/53tyrfy8", "https://tinyurl.com/4y4ce9uc", "https://tinyurl.com/mwnmrpbf", "https://tinyurl.com/s5cs68ve", "https://tinyurl.com/2p9fa88w",
                    "https://tinyurl.com/a3jtrp89", "https://tinyurl.com/2p83s3pn", "https://tinyurl.com/yckn4sz3", "https://tinyurl.com/2p8sya8f", "https://tinyurl.com/2p8wf8ua",
                      "https://tinyurl.com/yv8tc3vj", "https://tinyurl.com/2p99468a", "https://tinyurl.com/umuryr3s", "https://tinyurl.com/6dn7hd23", "https://tinyurl.com/34kwxu47",
                        "https://bit.ly/38rRyXv", "https://bit.ly/3wnYfSr", "https://bit.ly/3FE2JbL", "https://tinyurl.com/423s6s47", "https://tinyurl.com/2p8kce57", "https://tinyurl.com/bdzt34k4", "https://tinyurl.com/2p9cux8n", "https://tinyurl.com/mr3rnp5w",
                          "https://tinyurl.com/yckp7x58", "https://tinyurl.com/yc4xv3jc", "https://tinyurl.com/2r7s4uu7", "https://tinyurl.com/59cbjyme", "https://tinyurl.com/2p8n98nh"].sample
  )

end

puts 'done'
