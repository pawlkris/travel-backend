# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


paul = User.create(name: "paul", username:"paul", password:"paul", email:"paul@paul.com")

hawaii = Location.create(city:"Kona", state:"HI", country:"United States", lat: 19.639994, long: -155.9969261)
milwaukee = Location.create(city:"Milwaukee", state:"WI", country:"United States", lat: 43.0389025, long: -87.9064736)
boston = Location.create(city:"Boston", state:"MA", country:"United States", lat: 42.3600825, long: -71.0588801)
miami = Location.create(city:"Miami", state:"FL", country:"United States",       lat: 25.7616798, long: -80.1917902
)
asheville = Location.create(city:"Asheville", state:"NC", country:"United States", lat: 35.5950581, long: -82.5514869)


trip1 = Trip.create(name: "Milwaukee Fall 2017", description: "Visited friends and family before starting Flatiron... went to a punk show at a friends coliving/skatepark space", location_id:2 , user_id: 1, start_date: Date.new(2017,10,14), end_date: Date.new(2017,10,17), work:false, leisure: true, beach: false, family:true, friends:true)
trip2 = Trip.create(name: "Pre-NYC Hawaii Trip!", description: "Vacation to Hawaii before working like a dog", location_id:1, user_id: 1, start_date: Date.new(2017,9,22), end_date: Date.new(2017,10,6), people_involved: "Narinè", events: "Beaches on Beaches, Jungle, Mountains, Desert, Pokè-eating", work:false, leisure: true, beach: true, family:false, friends:true)
trip3 = Trip.create(name: "Last Work Trip to Boston", description: "Trip to Boston to say goodbye to coworkers and teacher in BMTN", location_id:3 , user_id: 1, start_date: Date.new(2017,10,12), end_date: Date.new(2017,10,14), people_involved: "Toni/Kirk/Zipporah, all the NE teachers",  work:true, leisure: false, beach:false, family:false, friends:false)
trip4 = Trip.create(name: "Miami Beach Trip 2017", description: "Beach Trip while Narine was on spring break featuring beach, cuban coffee, and arepas - oh and Willieeeee", location_id:4 , user_id: 1, start_date: Date.new(2017,3,20), end_date: Date.new(2017,3,25), people_involved: "Narine, Willie", work:false, leisure: true, beach:true, family:false, friends:true)
trip5 = Trip.create(name: "Asheville Mountains and Beers", description: "Trip to visit Robby after a work trip in nearby Greensboro. Went on a hike in the smokies and a bunch of breweries. Best food: Biscuithead", location_id:5 , user_id: 1, start_date: Date.new(2017,4,21), end_date: Date.new(2017,4,24), work:false, leisure: true, beach:false, family:false, friends:true)
trip6 = Trip.create(name: "Miami work trip with a  little beach", location_id:4 , user_id: 1, start_date: Date.new(2017,4,17), end_date: Date.new(2017,4,19), description: "Interviewed staff at Miami Dade College for Gates Frontier Set project... stayed at a hotel on the beach :)", work:true, leisure: false, beach:true, family:false, friends:false)
