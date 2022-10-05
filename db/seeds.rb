# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
epicure = {name: "Epicure", address: "75008, Paris", phone_number:"1234567", category:"french"}
roti = {name: "Roti", address: "chemin parla, pres lamem", phone_number:"1234567", category:"italian"}
burger = {name: "Burger", address: "750, Belgique", phone_number:"1234567", category:"belgian"}


[epicure, roti, burger].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
