# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

sfo = Airport.create(code: "SFO")
nyc = Airport.create(code: "NYC")
lax = Airport.create(code: "LAX")
den = Airport.create(code: "DEN")
dfw = Airport.create(code: "DFW")

Flight.create(departure_airport: sfo, arrival_airport: nyc, start_datetime: DateTime.now + 1.day, duration: 360)
Flight.create(departure_airport: lax, arrival_airport: sfo, start_datetime: DateTime.now + 2.days, duration: 60)
Flight.create(departure_airport: dfw, arrival_airport: den, start_datetime: DateTime.now + 3.days, duration: 180)
Flight.create(departure_airport: nyc, arrival_airport: dfw, start_datetime: DateTime.now + 4.days, duration: 240)
Flight.create(departure_airport: den, arrival_airport: lax, start_datetime: DateTime.now + 5.days, duration: 120)
Flight.create(departure_airport: lax, arrival_airport: nyc, start_datetime: DateTime.now + 6.days, duration: 300)