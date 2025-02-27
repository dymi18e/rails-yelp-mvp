# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Détruire les anciennes données pour éviter les doublons (optionnel)
Restaurant.destroy_all
Review.destroy_all

# Définir les catégories de restaurants


# Créer 5 restaurants
5.times do
  restaurant = Restaurant.create!(
    name:         Faker::Restaurant.name,
    address:      Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:     Restaurant::CATEGO.sample
  )

  # Pour chaque restaurant, créer un nombre aléatoire de reviews (entre 1 et 5 par exemple)
  # rand(1..5).times do
  #   restaurant.reviews.create!(
  #     content: Faker::Restaurant.review,   # Si Faker::Restaurant.review n'existe pas, utilisez Faker::Lorem.sentence
  #     rating:  rand(0..5)                   # Note aléatoire comprise entre 0 et 5
  #   )
  # end
end

puts "Done!!"
