# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airports
Airport.delete_all if Rails.env.development?

Airport.create!(name: 'Bariloche',
                code: 'BRC')
Airport.create!(name: 'Ushuaia',
                code: 'USH')
Airport.create!(name: 'San Martín de los Andes',
                code: 'CPC')
Airport.create!(name: 'Neuquén',
                code: 'NQN')

# Flights
Flight.delete_all if Rails.env.development?

Flight.create!(from_airport: Airport.first,
               to_airport:   Airport.second,
               departure: '2018-12-23 08:30:00',
               duration:  '01:50:00')
