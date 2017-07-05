

User.destroy_all

omar = User.create!(email: "Omar@student.com", password: "abcd1234")

event = Event.create!(name: "MindFulness", description: "It is nice some time to do mindfullness and cleare you mind from the life issues .. so let us do it togeather", location: "Amsterdam", price: 5, capacity: 10, includes_food: false, includes_drinks: true, starts_at: "07/02/2017", ends_at: "07/30/2017", active: true, user: omar)
