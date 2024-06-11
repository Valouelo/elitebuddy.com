User.destroy_all
Buddy.destroy_all
user = User.create!(email: "lolo@gmail.com", password: "valentine")
user2 = User.create!(email: "valou@gmail.com", password: "valentine")

Buddy.create!(user_id: user.id, name: "Cyril", description: "organisateur de week-end!", options: "Developpeur Ruby hors pair", price_per_day: 3000)
Buddy.create!(user_id: user2.id, name: "Tom", description: "videur de vin!", options: "Developpeur de pintes", price_per_day: 38)
Buddy.create!(user_id: user.id, name: "Jeremy", description: "Abdos en 6 packs", options: "Astronaute le week-end", price_per_day: 563)
