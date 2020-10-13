# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the database....'
Flat.destroy_all

restaurant = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "restaurant #{restaurant.id} is created"

puts 'Start seedings...'
3.times do
  restaurant_seed = Flat.create(
    name: Faker::TvShows::SiliconValley.app,
    address: Faker::Address.full_address,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price_per_night: rand(50..1000),
    number_of_guests: rand(1..4)
  )
  puts "restaurant #{restaurant_seed.id} is created"
end

puts 'done'
