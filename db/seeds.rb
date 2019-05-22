# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:      '234599843394857',
    category:     'chinese'
  },
  {
    name:         'ABC',
    address:      '9 Boundary St, Moscow',
    phone_number:      '223443394857',
    category:     'Russian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:      '5356363634',
    category:     'austrian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

