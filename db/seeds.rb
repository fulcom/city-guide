# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# users
# Guide et participant
alice = User.new(first_name: "Alice", last_name: "Fabre", city: "Paris", email: "alice@gmail.com", password: "123456")
alice.save
# Guide
charles = User.new(first_name: "Charles", last_name: "Fabr", city: "Londres", email: "charles@gmail.com", password: "123456")
charles.save
# participant
maxime = User.new(first_name: "Maxime", last_name: "Fab", city: "Rome", email: "maxime@gmail.com", password: "123456")
maxime.save
# participant
isabelle = User.new(first_name: "Isabelle", last_name: "Fa", city: "Paris", email: "isabell@gmail.com", password: "123456")
isabelle.save


# trips
montmartre = Trip.new(name: "Ballade à Montmartre", city: "Paris", user_id: "1")
montmartre.save
vingt = Trip.new(name: "Ballade dans le 20ème", city: "Paris", user_id: "1")
vingt.save
canal = Trip.new(name: "Découverte du Canal", city: "Paris", user_id: "2")
canal.save


# bookings
booking1 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 2, trip_id: 1) # Charles fait le trip d'Alice
booking1.save
booking2 = Booking.new(start_date: "21/08/2019", end_date: "21/08/2019", user_id: 3, trip_id: 1) # Maxime fait le trip d'Alice
booking2.save
booking3 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 1, trip_id: 3) # Alice fait le trip de Charles
booking3.save
booking4 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 4, trip_id: 3) # Isabelle fait le trip de Charles
booking4.save
booking5 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 3, trip_id: 3) # Maxime fait le trip de Charles
booking5.save


