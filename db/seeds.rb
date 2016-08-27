# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
user1 = User.create!(name: "Louis")
#Flat.create!(capacity: 2, city: "Paris")
user2 = User.create!(name: "Clément")

#puts "#{Flat.all.length} flats created"
puts "#{User.count} users created"

Flat.destroy_all
Flat.create!(name: "studio à Paris", capacity: 2, city: "Paris", user: user1)
#Flat.create!(capacity: 2, city: "Paris")
Flat.create!(name: "Maison aux Goudes", capacity: 5, city: "Marseille", user: user1)

#puts "#{Flat.all.length} flats created"
puts "#{Flat.count} flats created"

