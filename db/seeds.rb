# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db"
Package.destroy_all if Rails.env.development?
Hotel.destroy_all if Rails.env.development?
Train.destroy_all if Rails.env.development?
Car.destroy_all if Rails.env.development?

puts "Creating hotel data"
Hotel.create!(
  name: "Adlon",
  address: "Berlin",
  stars: 5,
  price: 200,
  photo: ""
  )

puts "Creating train data"
Train.create!(
  carrier_name: "Deutsche Bahn",
  dep_city: "Berlin",
  arr_city: "Munich",
  train_number: 1,
  price: 100,
  category: "2nd Class",
  dep_time: "08:00",
  arr_time: "12:45",
  photo: ""
  )

puts "Creating car data"
Car.create!(
  name: "BMW 3er",
  address: "Berlin",
  price: 150,
  car_category: "#",
  company_name: "Sixt",
  photo: ""
  )

puts "Creating packages data"
Package.create!(
  hotel_id: 1,
  train_id: 1,
  car_id: 1,
  dep_city: "Berlin",
  arr_city: "Munich",
  start_date: "2019-11-27",
  end_date: "2019-11-28"
  )
