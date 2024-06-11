# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Buddy.create!(name: "Cyril", description: "organisateur de week-end!", options: "Developpeur Ruby hors pair", price_per_day: 3000)
Buddy.create!(name: "Tom", description: "videur de vin!", options: "Developpeur de pintes", price_per_day: 38)
Buddy.create!(name: "Jeremy", description: "Abdos en 6 packs", options: "Astronautes le week-end", price_per_day: 563)
