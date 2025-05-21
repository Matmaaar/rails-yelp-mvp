# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

  resto_1 = Restaurant.new(
    name:    "resto 1",
    address: "Nantes",
    category: "chinese",
    
  )
  resto_1.save!

  resto_2 = Restaurant.new(
    name:    "resto 2",
    address: "Bordeaux",
    category: "italian",

  )
  resto_2.save!

  resto_3 = Restaurant.new(
    name:    "resto 3",
    address: "Bruxelles",
    category: "japanese",

  )
  resto_3.save!

  resto_4 = Restaurant.new(
    name:    "resto 4",
    address: "Nantes",
    category: "french",

  )
  resto_4.save!

  resto_5 = Restaurant.new(
    name:    "resto 5",
    address: "Super Ville",
    category: "belgian",

  )
  resto_5.save!
