Photo.delete_all
#Registration.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Users
miriam = User.create!(email: "miriam@codaisseurup.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurup.com", password: "abcd1234")
mat = User.create!(email: "mat@codaisseurup.com", password: "abcd1234")
omar = User.create!(email: "omar@codaisseurup.com", password: "abcd1234")

puts "#{User.all.size} users created"

# Events
event_1 = Event.create!(
  name: "Monthly Yoga Weekend",
  description: "Let's come together and practice some asanas together in the woods!",
  location: "Amsterdam",
  includes_food: false,
  includes_drinks: true,
  price: 10.00,
  starts_at: '2017-07-02',
  ends_at: '2017-08-02',
  capacity: 100,
  active: true,
  user: miriam,

)
puts "#{Event.all.size} events created"

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496058151/futyy1lobwqfv5ocpabp.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496058155/fp2jhend1ueo3lyzbuu9.jpg", event: event_1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496058154/mtsibuivn87okdfkikn1.jpg", event: event_1)

puts "#{Photo.all.size} photos created"



# Categories
Category.create!([
  { name: "Movements" },
  { name: "Outdoors & Adventure" },
  { name: "Tech" },
  { name: "Family" },
  { name: "Health & Wellness" },
  { name: "Sports & Fitness" },
  { name: "Learning" },
  { name: "Photography" },
  { name: "Food & Drink" },
])

puts "#{Category.all.size} categories created"

# Events
event = Event.find_by(name: "Monthly Yoga Weekend")
event.categories << Category.find_by(name: "Outdoors & Adventure")
event.categories << Category.find_by(name: "Sports & Fitness")

puts "#{Event.all.size} events created"

# Registrations
# Registration.create!([
#   { event: event, user: wouter, price: event.price, guests_count: 1 },
#   { event: event, user: mat, price: event.price, guests_count: 3 },
# ])
#
# puts "#{Registration.all.size} registrations created"
