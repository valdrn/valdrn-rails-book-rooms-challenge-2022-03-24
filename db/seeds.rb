# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Room.destroy_all
Hotel.destroy_all

hotel1 = Hotel.create(name: "Splendid", address: "Paris")
valentin = User.create(email: "valentin@gmail.fr", password: "secret")


room1 = Room.create(price_per_night: 50, capacity: 2, hotel: hotel1)
room2 = Room.create(price_per_night: 75, capacity: 4, hotel: hotel1)
