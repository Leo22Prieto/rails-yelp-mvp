# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = [
  { id: 1,
    name: 'Le Petit Carnot',
    address: '13 Bd Carnot, 06560 Valbone',
    phone_number: '+33612180271',
    category: 'italian' },
  { id: 2,
    name: 'SuAndShi',
    address: '13 Bd Jean Hibert, 06400 Cannes',
    phone_number: '+33493303211',
    category: 'japanese' }
]

restaurants.each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
