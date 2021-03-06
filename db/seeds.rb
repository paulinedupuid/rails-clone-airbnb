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
avatar_one = URI.open('https://images.pexels.com/photos/7585815/pexels-photo-7585815.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_one = User.create(first_name: "Emma", last_name: "Mingella", email: "emma.mingella@yahoo.com", password: "em758581")
user_one.photo.attach(io: avatar_one, filename: 'emma.jpg', content_type: 'image/jpg')

avatar_two = URI.open('https://images.pexels.com/photos/8368454/pexels-photo-8368454.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_two = User.create(first_name: "Tom", last_name: "Brady", email: "tom.brady@yahoo.com", password: "tb836445")
user_two.photo.attach(io: avatar_two, filename: 'tom.jpg', content_type: 'image/jpg')

avatar_three = URI.open('https://images.pexels.com/photos/7968561/pexels-photo-7968561.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_three = User.create(first_name: "Jenny", last_name: "Fisher", email: "jenny.fisher@yahoo.com", password: "jf796856")
user_three.photo.attach(io: avatar_three, filename: 'jenny.jpg', content_type: 'image/jpg')

avatar_four = URI.open('https://images.pexels.com/photos/4559946/pexels-photo-4559946.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
user_four = User.create(first_name: "Paul", last_name: "Mira", email: "paul.mira@yahoo.com", password: "pm455994")
user_four.photo.attach(io: avatar_four, filename: 'paul.jpg', content_type: 'image/jpg')
puts "---users created---"

puts "---creating flats---"
flat_one_photo_one = URI.open('https://images.pexels.com/photos/5490182/pexels-photo-5490182.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one_photo_two = URI.open('https://images.pexels.com/photos/4857774/pexels-photo-4857774.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one_photo_three = URI.open('https://images.pexels.com/photos/6044385/pexels-photo-6044385.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_one = Flat.new(title: "Nice duplex in Marseille", description: "Lovely appartment in Marseille, close to the marina", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "87 Rue Sainte, 13007 Marseille", price_per_day: 100, number_of_guests: 4, amenities: "[wifi, television, shower, rooftop, bathroom products, bed linen, bathroom towels]")
flat_one.user = user_one
flat_one.photos.attach(io: flat_one_photo_one, filename: 'f1p1.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: flat_one_photo_two, filename: 'f1p2.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: flat_one_photo_three, filename: 'f1p3.jpg', content_type: 'image/jpg')
flat_one.save!

flat_two_photo_one = URI.open('https://images.pexels.com/photos/5824517/pexels-photo-5824517.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two_photo_two = URI.open('https://images.pexels.com/photos/7147666/pexels-photo-7147666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two_photo_three = URI.open('https://images.pexels.com/photos/7195571/pexels-photo-7195571.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_two = Flat.new(title: "Cosy flat in Bordeaux", description: "Cosy appartment in Bordeaux, close to the old town and all there is to see here!", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "39 Rue Bouffard, 33000 Bordeaux", price_per_day: 80, number_of_guests: 2, amenities: "[wifi, television, shower, dishware, bathroom products, bed linen, bathroom towels, balcony, car park]")
flat_two.user = user_one
flat_two.photos.attach(io: flat_two_photo_one, filename: 'f2p1.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: flat_two_photo_two, filename: 'f2p2.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: flat_two_photo_three, filename: 'f2p3.jpg', content_type: 'image/jpg')
flat_two.save!

flat_three_photo_one = URI.open('https://images.pexels.com/photos/5745940/pexels-photo-5745940.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three_photo_two = URI.open('https://images.pexels.com/photos/6487950/pexels-photo-6487950.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three_photo_three = URI.open('https://images.pexels.com/photos/6672296/pexels-photo-6672296.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_three = Flat.new(title: "Typical appartment in Rennes", description: "One-of-a-kind appartment in the center of Rennes, everything there is to see from walking distance", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "20 Quai Emile Zola, 35000 Rennes", price_per_day: 60, number_of_guests: 2, amenities: "[shower, dishware, bathroom products, bed linen, bathroom towels, balcony]")
flat_three.user = user_three
flat_three.photos.attach(io: flat_three_photo_one, filename: 'f3p1.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: flat_three_photo_two, filename: 'f3p2.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: flat_three_photo_three, filename: 'f3p3.jpg', content_type: 'image/jpg')
flat_three.save!

flat_four_photo_one = URI.open('https://images.pexels.com/photos/2459/stairs-home-loft-lifestyle.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_four_photo_two = URI.open('https://images.pexels.com/photos/892618/pexels-photo-892618.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_four_photo_three = URI.open('https://images.pexels.com/photos/698170/pexels-photo-698170.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_four_photo_four = URI.open('https://images.pexels.com/photos/932095/pexels-photo-932095.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_four = Flat.new(title: "Typical house in Dijon", description: "In the old tow of Dijon, discover this charming house", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "9 Place de la Liberation, 21000 Dijon", price_per_day: 150, number_of_guests: 2, amenities: "[bathtub, dishware, dishwasher, bathroom products, bed linen, bathroom towels, wifi, television, car park, terrace]")
flat_four.user = user_three
flat_four.photos.attach(io: flat_four_photo_one, filename: 'f4p1.jpg', content_type: 'image/jpg')
flat_four.photos.attach(io: flat_four_photo_two, filename: 'f4p2.jpg', content_type: 'image/jpg')
flat_four.photos.attach(io: flat_four_photo_three, filename: 'f4p3.jpg', content_type: 'image/jpg')
flat_four.photos.attach(io: flat_four_photo_four, filename: 'f4p4.jpg', content_type: 'image/jpg')
flat_four.save!

flat_five_photo_one = URI.open('https://images.pexels.com/photos/698170/pexels-photo-698170.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_five_photo_two = URI.open('https://images.pexels.com/photos/6621052/pexels-photo-6621052.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_five_photo_three = URI.open('https://images.pexels.com/photos/6438760/pexels-photo-6438760.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_five_photo_four = URI.open('https://images.pexels.com/photos/6077368/pexels-photo-6077368.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_five = Flat.new(title: "Lovely appartement in Nice", description: "Enjoy the view of Nice from this amazing appartement", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "32 Avenue du Mont Alban, 06300 Nice", price_per_day: 200, number_of_guests: 6, amenities: "[shower, bathtub, hot tub, dishware, bathroom products, bed linen, bathroom towels, terrace]")
flat_five.user = user_one
flat_five.photos.attach(io: flat_five_photo_one, filename: 'f5p1.jpg', content_type: 'image/jpg')
flat_five.photos.attach(io: flat_five_photo_two, filename: 'f5p2.jpg', content_type: 'image/jpg')
flat_five.photos.attach(io: flat_five_photo_three, filename: 'f5p3.jpg', content_type: 'image/jpg')
flat_five.photos.attach(io: flat_five_photo_four, filename: 'f5p4.jpg', content_type: 'image/jpg')
flat_five.save!

flat_six_photo_one = URI.open('https://images.pexels.com/photos/7018406/pexels-photo-7018406.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_six_photo_two = URI.open('https://images.pexels.com/photos/3965563/pexels-photo-3965563.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_six_photo_three = URI.open('https://images.pexels.com/photos/6621244/pexels-photo-6621244.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_six_photo_four = URI.open('https://images.pexels.com/photos/6758773/pexels-photo-6758773.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_six = Flat.new(title: "Pretty flat in Lille", description: "Enjoy the best of Lille from this pretty appartement", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "71 Boulevard Vauban, 59000 Lille", price_per_day: 90, number_of_guests: 4, amenities: "[shower, dishware, micro wave, coffee machine, bathroom products, bed linen, bathroom towels, balcony]")
flat_six.user = user_three
flat_six.photos.attach(io: flat_six_photo_one, filename: 'f6p1.jpg', content_type: 'image/jpg')
flat_six.photos.attach(io: flat_six_photo_two, filename: 'f6p2.jpg', content_type: 'image/jpg')
flat_six.photos.attach(io: flat_six_photo_three, filename: 'f6p3.jpg', content_type: 'image/jpg')
flat_six.photos.attach(io: flat_six_photo_four, filename: 'f6p4.jpg', content_type: 'image/jpg')
flat_six.save!

flat_seven_photo_one = URI.open('https://images.pexels.com/photos/6492402/pexels-photo-6492402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_seven_photo_two = URI.open('https://images.pexels.com/photos/5417293/pexels-photo-5417293.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_seven_photo_three = URI.open('https://images.pexels.com/photos/6301168/pexels-photo-6301168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_seven_photo_four = URI.open('https://images.pexels.com/photos/5602170/pexels-photo-5602170.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_seven = Flat.new(title: "Flat in the heart of Montpellier", description: "Visit Montpellier thanks to this lovely appartement next to the old town", availability_start: Date.new(2022, 3, 15), availability_end: Date.new(2022, 4, 15), address: "11 Rue du Faubourg Boutonnet, 34090 Montpellier", price_per_day: 70, number_of_guests: 2, amenities: "[shower, coffee machine, bathroom products, bed linen, bathroom towels, balcony]")
flat_seven.user = user_one
flat_seven.photos.attach(io: flat_seven_photo_one, filename: 'f7p1.jpg', content_type: 'image/jpg')
flat_seven.photos.attach(io: flat_seven_photo_two, filename: 'f7p2.jpg', content_type: 'image/jpg')
flat_seven.photos.attach(io: flat_seven_photo_three, filename: 'f7p3.jpg', content_type: 'image/jpg')
flat_seven.photos.attach(io: flat_seven_photo_four, filename: 'f7p4.jpg', content_type: 'image/jpg')
flat_seven.save!
puts "---flats created---"

flat_eight_photo_one = URI.open('https://images.pexels.com/photos/7393980/pexels-photo-7393980.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_eight_photo_two = URI.open('https://images.pexels.com/photos/5998136/pexels-photo-5998136.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_eight_photo_three = URI.open('https://images.pexels.com/photos/6301184/pexels-photo-6301184.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_eight_photo_four = URI.open('https://images.pexels.com/photos/6198655/pexels-photo-6198655.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_eight = Flat.new(title: "Amazing flat in Lyon", description: "Enjoy the city from this amazing appartment close to Vieux Lyon", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "86 Rue Saint-Georges, 69005 Lyon", price_per_day: 100, number_of_guests: 4, amenities: "[shower, dishware, bathroom products, bed linen, bathroom towels, wifi, television]")
flat_eight.user = user_three
flat_eight.photos.attach(io: flat_eight_photo_one, filename: 'f8p1.jpg', content_type: 'image/jpg')
flat_eight.photos.attach(io: flat_eight_photo_two, filename: 'f8p2.jpg', content_type: 'image/jpg')
flat_eight.photos.attach(io: flat_eight_photo_three, filename: 'f8p3.jpg', content_type: 'image/jpg')
flat_eight.photos.attach(io: flat_eight_photo_four, filename: 'f8p4.jpg', content_type: 'image/jpg')
flat_eight.save!

flat_nine_photo_one = URI.open('https://images.pexels.com/photos/5998041/pexels-photo-5998041.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_nine_photo_two = URI.open('https://images.pexels.com/photos/5998138/pexels-photo-5998138.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_nine_photo_three = URI.open('https://images.pexels.com/photos/4992480/pexels-photo-4992480.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_nine_photo_four = URI.open('https://images.pexels.com/photos/7319279/pexels-photo-7319279.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_nine = Flat.new(title: "Typical flat in Paris", description: "Enjoy the best arronissement of Paris from this cosy appartment ", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "60 Rue Charlot, 75003 Paris", price_per_day: 120, number_of_guests: 2, amenities: "[shower, dishware, bathroom products, bed linen, bathroom towels, wifi, television, coffee machine, micro wave]")
flat_nine.user = user_one
flat_nine.photos.attach(io: flat_nine_photo_one, filename: 'f9p1.jpg', content_type: 'image/jpg')
flat_nine.photos.attach(io: flat_nine_photo_two, filename: 'f9p2.jpg', content_type: 'image/jpg')
flat_nine.photos.attach(io: flat_nine_photo_three, filename: 'f9p3.jpg', content_type: 'image/jpg')
flat_nine.photos.attach(io: flat_nine_photo_four, filename: 'f9p4.jpg', content_type: 'image/jpg')
flat_nine.save!

flat_ten_photo_one = URI.open('https://images.pexels.com/photos/4846106/pexels-photo-4846106.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_ten_photo_two = URI.open('https://images.pexels.com/photos/5760872/pexels-photo-5760872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_ten_photo_three = URI.open('https://images.pexels.com/photos/4846461/pexels-photo-4846461.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_ten_photo_four = URI.open('https://images.pexels.com/photos/4993065/pexels-photo-4993065.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
flat_ten = Flat.new(title: "Cute flat in Nantes", description: "Visit Nantes from this cosy appartment, walking distance from Ile de Nantes", availability_start: Date.new(2022, 1, 1), availability_end: Date.new(2022, 12, 31), address: "29 Rue des Olivettes, 44000 Nantes", price_per_day: 90, number_of_guests: 4, amenities: "[shower, dishware, bathroom products, bed linen, bathroom towels, wifi, television, kettle, washing machine, balcony]")
flat_ten.user = user_three
flat_ten.photos.attach(io: flat_ten_photo_one, filename: 'f10p1.jpg', content_type: 'image/jpg')
flat_ten.photos.attach(io: flat_ten_photo_two, filename: 'f10p2.jpg', content_type: 'image/jpg')
flat_ten.photos.attach(io: flat_ten_photo_three, filename: 'f10p3.jpg', content_type: 'image/jpg')
flat_ten.photos.attach(io: flat_ten_photo_four, filename: 'f10p4.jpg', content_type: 'image/jpg')
flat_ten.save!

puts "---creating reservations---"
reservation_one = Reservation.new(reservation_start: Date.new(2022, 3, 18), reservation_end: Date.new(2022, 3, 25), number_of_guests: 4, status: "pending")
reservation_one.user = user_two
reservation_one.flat = flat_one
reservation_one.save!
reservation_two = Reservation.new(reservation_start: Date.new(2022, 3, 28), reservation_end: Date.new(2022, 4, 3), number_of_guests: 1, status: "pending")
reservation_two.user = user_four
reservation_two.flat = flat_one
reservation_two.save!
reservation_three = Reservation.new(reservation_start: Date.new(2022, 4, 15), reservation_end: Date.new(2022, 4, 27), number_of_guests: 2, status: "pending")
reservation_three.user = user_two
reservation_three.flat = flat_two
reservation_three.save!
reservation_four = Reservation.new(reservation_start: Date.new(2022, 4, 28), reservation_end: Date.new(2022, 4, 30), number_of_guests: 2, status: "pending")
reservation_four.user = user_four
reservation_four.flat = flat_three
reservation_four.save!
puts "---reservations created---"
