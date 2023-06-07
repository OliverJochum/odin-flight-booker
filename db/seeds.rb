# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([{code: "FRA",name:"Frankfurt"},{code: "CPH", name:"Copenhagen"},{code:"JFK",name:"John F. Kennedy"},{code:"LBA",name:"Leeds Bradford"}])

flights = Flight.create([{departure_airport_id:"FRA", arrival_airport_id:"CPH",start:DateTime.new(2023, 6, 7, 10, 30, 0),duration:2},{departure_airport_id:"JFK", arrival_airport_id:"LBA",start:DateTime.new(2023, 6, 12, 13, 0, 0),duration:9}])

