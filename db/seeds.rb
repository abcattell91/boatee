require 'faker'

puts "Cleaning up database..."
Boat.delete_all
Booking.delete_all
User.delete_all
Review.delete_all

puts "Database cleaned"

puts 'Creating Users...'

user1 = User.create(email: "email@email.com", password: "123456")
user2 = User.create(email: "email2@email.com", password: "123456")
user3 = User.create(email: "email3@email.com", password: "123456")
user4 = User.create(email: "email4@email.com", password: "123456")
user5 = User.create(email: "email5@email.com", password: "123456")
user6 = User.create(email: "email6@email.com", password: "123456")
user7 = User.create(email: "email7@email.com", password: "123456")
user8 = User.create(email: "email8@email.com", password: "123456")
user9 = User.create(email: "email9@email.com", password: "123456")
user10 = User.create(email: "email10@email.com", password: "123456")

puts 'Creating Boats...'

boat1 = Boat.create!(
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
boat2 = Boat.create!(
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
boat3 = Boat.create!(
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
boat4 = Boat.create!(
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
boat5 = Boat.create!(
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
boat6 = Boat.create!(
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
boat7 = Boat.create!(
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
boat8 = Boat.create!(
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
boat9 = Boat.create!(
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
boat10 = Boat.create!(
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
boat11 = Boat.create!(
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
boat12 = Boat.create!(
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
boat13 = Boat.create!(
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
boat14 = Boat.create!(
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
boat15 = Boat.create!(
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
boat16 = Boat.create!(
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
boat17 = Boat.create!(
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
boat18 = Boat.create!(
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
boat19 = Boat.create!(
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
boat20 = Boat.create!(
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
boat21 = Boat.create!(
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

puts 'Creating Bookings'

booking1 = Booking.create!(
  user: user1,
  boat: boat1,
  start_date: DateTime.strptime("08/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking2 = Booking.create!(
  user: user2,
  boat: boat2,
  start_date: DateTime.strptime("08/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking3 = Booking.create!(
  user: user3,
  boat: boat3,
  start_date: DateTime.strptime("08/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking4 = Booking.create!(
  user: user4,
  boat: boat4,
  start_date: DateTime.strptime("08/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking5 = Booking.create!(
  user: user5,
  boat: boat5,
  start_date: DateTime.strptime("08/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking6 = Booking.create!(
  user: user6,
  boat: boat6,
  start_date: DateTime.strptime("08/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking7 = Booking.create!(
  user: user7,
  boat: boat7,
  start_date: DateTime.strptime("08/12/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/12/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking8 = Booking.create!(
  user: user8,
  boat: boat8,
  start_date: DateTime.strptime("08/01/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/01/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking9 = Booking.create!(
  user: user9,
  boat: boat9,
  start_date: DateTime.strptime("25/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("27/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking10 = Booking.create!(
  user: user10,
  boat: boat10,
  start_date: DateTime.strptime("27/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking11 = Booking.create!(
  user: user1,
  boat: boat11,
  start_date: DateTime.strptime("30/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("01/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking12 = Booking.create!(
  user: user2,
  boat: boat12,
  start_date: DateTime.strptime("02/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("04/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking13 = Booking.create!(
  user: user3,
  boat: boat13,
  start_date: DateTime.strptime("14/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking14 = Booking.create!(
  user: user4,
  boat: boat14,
  start_date: DateTime.strptime("14/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking15 = Booking.create!(
  user: user5,
  boat: boat15,
  start_date: DateTime.strptime("16/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("18/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking16 = Booking.create!(
  user: user6,
  boat: boat16,
  start_date: DateTime.strptime("19/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("21/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking17 = Booking.create!(
  user: user7,
  boat: boat17,
  start_date: DateTime.strptime("10/12/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/12/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking18 = Booking.create!(
  user: user8,
  boat: boat18,
  start_date: DateTime.strptime("20/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking19 = Booking.create!(
  user: user9,
  boat: boat19,
  start_date: DateTime.strptime("26/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking20 = Booking.create!(
  user: user10,
  boat: boat20,
  start_date: DateTime.strptime("01/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("03/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking21 = Booking.create!(
  user: user1,
  boat: boat21,
  start_date: DateTime.strptime("04/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("08/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking22 = Booking.create!(
  user: user2,
  boat: boat1,
  start_date: DateTime.strptime("09/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking23 = Booking.create!(
  user: user3,
  boat: boat2,
  start_date: DateTime.strptime("14/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("20/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking24 = Booking.create!(
  user: user4,
  boat: boat3,
  start_date: DateTime.strptime("22/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking25 = Booking.create!(
  user: user5,
  boat: boat4,
  start_date: DateTime.strptime("22/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking26 = Booking.create!(
  user: user6,
  boat: boat5,
  start_date: DateTime.strptime("22/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking27 = Booking.create!(
  user: user7,
  boat: boat6,
  start_date: DateTime.strptime("22/02/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/02/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking28 = Booking.create!(
  user: user8,
  boat: boat7,
  start_date: DateTime.strptime("20/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking29 = Booking.create!(
  user: user9,
  boat: boat8,
  start_date: DateTime.strptime("17/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking30 = Booking.create!(
  user: user10,
  boat: boat9,
  start_date: DateTime.strptime("17/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking31 = Booking.create!(
  user: user1,
  boat: boat10,
  start_date: DateTime.strptime("13/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("15/10/2022 17:00", "%d/%m/%Y %H:%M"),
)




puts 'Creating Reviews'

Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...",
  user: user1,
  booking: booking11
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user2,
  booking: booking12
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking13
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user4,
  booking: booking14
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking15
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking17
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user8,
  booking: booking18
)
Review.create!(
  rating: 3,
  comment: "Loved it. But could have been a bit longer and less expensive!",
  user: user9,
  booking: booking19
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user10,
  booking: booking20
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking21
)
Review.create!(
  rating: 3,
  comment: "Loved it. But could have been a bit longer and less expensive!",
  user: user2,
  booking: booking22
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking23
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user4,
  booking: booking24
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking25
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking26
)
Review.create!(
  rating: 1,
  comment: "Terrible",
  user: user7,
  booking: booking27
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user8,
  booking: booking28
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking29
)
Review.create!(
  rating: 1,
  comment: "Terrible",
  user: user10,
  booking: booking30
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking31
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking11
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking12
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking13
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking14
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user5,
  booking: booking15
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user7,
  booking: booking17
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking18
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user9,
  booking: booking19
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user10,
  booking: booking20
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user1,
  booking: booking21
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking22
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking23
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user4,
  booking: booking24
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking25
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking26
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user7,
  booking: booking27
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking28
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user9,
  booking: booking29
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user10,
  booking: booking30
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking31
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user6,
  booking: booking6
)

puts 'done'
