# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# db/seeds.rb

Movie.create([
  { title: 'Inception', overview: 'A mind-bending thriller', poster_url: 'https://image.url', rating: 8.8 },
  { title: 'The Dark Knight', overview: 'Batman faces the Joker', poster_url: 'https://image.url', rating: 9.0 },
  { title: 'Interstellar', overview: 'A space-time exploration', poster_url: 'https://image.url', rating: 8.6 }
])
List.create(name: "Drama")
List.create(name: "Comedy")
List.create(name: "Action")
List.create(name: "Romantic")
