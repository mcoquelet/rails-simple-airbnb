require 'faker'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

10.times do
  Flat.create!(
    name: "#{Faker::Address.street_name} Flat #{Faker::Address.city}",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph_by_chars(number: 3000, supplemental: false),
    price_per_night: rand(60..150),
    number_of_guests: rand(2..6)
  )
end
