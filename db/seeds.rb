# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

puts "---cleaning reservation db---"
Reservation.destroy_all
puts "---cleaning flat db---"
Flat.destroy_all
puts "---cleaning user db---"
User.destroy_all


puts "---creating users---"
user_one = User.create(first_name: "John", last_name: "Doe", email: "john.doe@yahoo.com", password: "123456")
user_two = User.create(first_name: "Jane", last_name: "Doette", email: "jane.doette@yahoo.com", password: "123456")
user_three = User.create(first_name: "Jenny", last_name: "Jen", email: "jenny.jen@yahoo.com", password: "123456")
user_four = User.create(first_name: "Paul", last_name: "Ette", email: "paul.ette@yahoo.com", password: "123456")
puts "---users created---"

puts "---creating flats---"
flat_one = Flat.new(title: "Nice duplex in NYC", description: "Lovely appartment in Manhattan, close to Central Park", availability_start: Date.new(2022, 1, 15), availability_end: Date.new(2022, 2, 15), address: "980 Park Avenue, New York, NY 10028, United-States")
flat_one.user = user_one
flat_one.save!

flat_two = Flat.new(title: "Nice flat in Brooklyn", description: "Cosy appartment in Brooklyn, in the heart of Williamsburg", availability_start: Date.new(2022, 2, 15), availability_end: Date.new(2022, 3, 15), address: "66 N 6th Street, Brooklyn, NY 11211, United-States")
flat_two.user = user_one
flat_two.save!

flat_three = Flat.new(title: "House in Brooklyn", description: "Charming house in Brooklyn, close to Central Park", availability_start: Date.new(2022, 3, 15), availability_end: Date.new(2022, 4, 15), address: "76 Montague Street, Brooklyn, NY 11201, United-States")
flat_three.user = user_three
flat_three.save!
puts "---flats created---"

puts "---creating reservations---"
reservation_one = Reservation.new(reservation_start: Date.new(2022, 1, 18), reservation_end: Date.new(2022, 1, 25))
reservation_one.user = user_two
reservation_one.flat = flat_one
reservation_one.save!
reservation_two = Reservation.new(reservation_start: Date.new(2022, 1, 28), reservation_end: Date.new(2022, 2, 3))
reservation_two.user = user_four
reservation_two.flat = flat_one
reservation_two.save!
reservation_three = Reservation.new(reservation_start: Date.new(2022, 2, 15), reservation_end: Date.new(2022, 2, 27))
reservation_three.user = user_two
reservation_three.flat = flat_two
reservation_three.save!
reservation_four = Reservation.new(reservation_start: Date.new(2022, 3, 17), reservation_end: Date.new(2022, 4, 1))
reservation_four.user = user_four
reservation_four.flat = flat_three
reservation_four.save!
puts "---reservations created---"
