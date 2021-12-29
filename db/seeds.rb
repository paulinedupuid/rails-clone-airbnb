# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'open-uri'

puts "---cleaning reservation db---"
Reservation.destroy_all
puts "---cleaning flat db---"
Flat.destroy_all
puts "---cleaning user db---"
User.destroy_all


puts "---creating users---"
avatar_one = URI.open('https://images.pexels.com/photos/8368454/pexels-photo-8368454.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_one = User.create(first_name: "John", last_name: "Doe", email: "john.doe@yahoo.com", password: "123456")
user_one.photo.attach(io: avatar_one, filename: 'john.jpg', content_type: 'image/jpg')

avatar_two = URI.open('https://images.pexels.com/photos/7585815/pexels-photo-7585815.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_two = User.create(first_name: "Jane", last_name: "Doette", email: "jane.doette@yahoo.com", password: "123456")
user_two.photo.attach(io: avatar_two, filename: 'jane.jpg', content_type: 'image/jpg')

avatar_three = URI.open('https://images.pexels.com/photos/7968561/pexels-photo-7968561.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_three = User.create(first_name: "Jenny", last_name: "Jen", email: "jenny.jen@yahoo.com", password: "123456")
user_three.photo.attach(io: avatar_three, filename: 'jenny.jpg', content_type: 'image/jpg')

avatar_four = URI.open('https://images.pexels.com/photos/4559946/pexels-photo-4559946.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_four = User.create(first_name: "Paul", last_name: "Ette", email: "paul.ette@yahoo.com", password: "123456")
user_three.photo.attach(io: avatar_four, filename: 'paul.jpg', content_type: 'image/jpg')
puts "---users created---"

puts "---creating flats---"
flat_one_photo_one = URI.open('https://images.pexels.com/photos/5490182/pexels-photo-5490182.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one_photo_two = URI.open('https://images.pexels.com/photos/4857774/pexels-photo-4857774.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one_photo_three = URI.open('https://images.pexels.com/photos/6044385/pexels-photo-6044385.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one = Flat.new(title: "Nice duplex in NYC", description: "Lovely appartment in Manhattan, close to Central Park", availability_start: Date.new(2022, 1, 15), availability_end: Date.new(2022, 2, 15), address: "980 Park Avenue, New York, NY 10028, United-States", price_per_day: 100, number_of_guests: 4)
flat_one.user = user_one
flat_one.photos.attach(io: flat_one_photo_one, filename: 'f1p1.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: flat_one_photo_two, filename: 'f1p2.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: flat_one_photo_three, filename: 'f1p3.jpg', content_type: 'image/jpg')
flat_one.save!

flat_two_photo_one = URI.open('https://images.pexels.com/photos/5824517/pexels-photo-5824517.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two_photo_two = URI.open('https://images.pexels.com/photos/7147666/pexels-photo-7147666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two_photo_three = URI.open('https://images.pexels.com/photos/7195571/pexels-photo-7195571.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two = Flat.new(title: "Nice flat in Brooklyn", description: "Cosy appartment in Brooklyn, in the heart of Williamsburg", availability_start: Date.new(2022, 2, 15), availability_end: Date.new(2022, 3, 15), address: "66 N 6th Street, Brooklyn, NY 11211, United-States", price_per_day: 80, number_of_guests: 2)
flat_two.user = user_one
flat_two.photos.attach(io: flat_two_photo_one, filename: 'f2p1.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: flat_two_photo_two, filename: 'f2p2.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: flat_two_photo_three, filename: 'f2p3.jpg', content_type: 'image/jpg')
flat_two.save!

flat_three_photo_one = URI.open('https://images.pexels.com/photos/5745940/pexels-photo-5745940.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three_photo_two = URI.open('https://images.pexels.com/photos/6487950/pexels-photo-6487950.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three_photo_three = URI.open('https://images.pexels.com/photos/6672296/pexels-photo-6672296.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three = Flat.new(title: "House in Brooklyn", description: "Charming house in Brooklyn, close to Central Park", availability_start: Date.new(2022, 3, 15), availability_end: Date.new(2022, 4, 15), address: "76 Montague Street, Brooklyn, NY 11201, United-States", price_per_day: 70, number_of_guests: 2)
flat_three.user = user_three
flat_three.photos.attach(io: flat_three_photo_one, filename: 'f3p1.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: flat_three_photo_two, filename: 'f3p2.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: flat_three_photo_three, filename: 'f3p3.jpg', content_type: 'image/jpg')
flat_three.save!
puts "---flats created---"

puts "---creating reservations---"
reservation_one = Reservation.new(reservation_start: Date.new(2022, 1, 18), reservation_end: Date.new(2022, 1, 25), number_of_guests: 4)
reservation_one.user = user_two
reservation_one.flat = flat_one
reservation_one.save!
reservation_two = Reservation.new(reservation_start: Date.new(2022, 1, 28), reservation_end: Date.new(2022, 2, 3), number_of_guests: 1)
reservation_two.user = user_four
reservation_two.flat = flat_one
reservation_two.save!
reservation_three = Reservation.new(reservation_start: Date.new(2022, 2, 15), reservation_end: Date.new(2022, 2, 27), number_of_guests: 2)
reservation_three.user = user_two
reservation_three.flat = flat_two
reservation_three.save!
reservation_four = Reservation.new(reservation_start: Date.new(2022, 3, 17), reservation_end: Date.new(2022, 4, 1), number_of_guests: 2)
reservation_four.user = user_four
reservation_four.flat = flat_three
reservation_four.save!
puts "---reservations created---"
