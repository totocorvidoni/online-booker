# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airports
# Airport.delete_all if Rails.env.development?

Airport.create!(name: 'Bariloche', code: 'BRC')
Airport.create!(name: 'Ushuaia', code: 'USH')
Airport.create!(name: 'San Martín de los Andes', code: 'CPC')
Airport.create!(name: 'Neuquén', code: 'NQN')
Airport.create!(name: 'Buenos Aires', code: 'AEP')

# Flights
# Flight.delete_all if Rails.env.development?

Flight.create!(from_airport: Airport.first,
               to_airport:   Airport.second,
               departure: '2018-12-23 08:30:00',
               duration:  '01:50:00')
Flight.create!(from_airport: Airport.first,
               to_airport:   Airport.second,
               departure: '2018-12-23 12:00:00',
               duration:  '01:50:00')
Flight.create!(from_airport: Airport.first,
               to_airport:   Airport.third,
               departure: '2018-12-23 14:20:00',
               duration:  '01:50:00')
Flight.create!(from_airport: Airport.second,
               to_airport:   Airport.third,
               departure: '2019-3-15 17:45:00',
               duration:  '02:10:00')
Flight.create!(from_airport: Airport.first,
               to_airport:   Airport.fourth,
               departure: '2019-10-17 17:45:00',
               duration:  '02:45:00')
Flight.create!(from_airport: Airport.fifth,
               to_airport:   Airport.first,
               departure: '2019-03-12 08:45:00',
               duration:  '01:40:00')

# Passengers
Passenger.create!(name: 'Pupe', email: 'pupe@dot.com')
Passenger.create!(name: 'Toto', email: 'toto@dot.com')
Passenger.create!(name: 'Traveler', email: 'trav@eler.com')

# Bookings
Booking.create!(flight_id: 6, passenger_id: 1)
Booking.create!(flight_id: 6, passenger_id: 2)
Booking.create!(flight_id: 1, passenger_id: 3)
Booking.create!(flight_id: 4, passenger_id: 3)
Booking.create!(flight_id: 5, passenger_id: 3)
