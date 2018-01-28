# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


paul = User.create(name: "paul", username:"paul", password:"paul", email:"paul@paul.com")

hawaii = Location.create(city:"Kona", state:"HI", country:"United States")
milwaukee = Location.create(city:"Milwaukee", state:"WI", country:"United States")
boston = Location.create(city:"Boston", state:"MA", country:"United States")
miami = Location.create(city:"Miami", state:"FL", country:"United States")
asheville = Location.create(city:"Asheville", state:"NC", country:"United States")


trip1 = Trip.create(name: "Milwaukee Fall 2017", description: "Visited family before starting Flatiron", location_id:2 , user_id: 1, start_date: Date.new(2017,10,14), end_date: Date.new(2017,10,17), people_involved: "Grandparents, Parents, Aunt Kay, Brother Danny, Ryan Shaw, Ryan Pilakowski, Amie Azad, Elyse Clouthier, Liam O'Brien", events: "Skatepark/Warehouse Punk Show, Hanging out and seeing people", work:false, leisure: true, beach: false, family:true, friends:true)
trip2 = Trip.create(name: "Pre-NYC Hawaii Trip!", description: "Vacation to Hawaii before working like a dog", location_id:1, user_id: 1, start_date: Date.new(2017,9,22), end_date: Date.new(2017,10,6), people_involved: "Narinè", events: "Beaches on Beaches, Jungle, Mountains, Desert, Pokè-eating", work:false, leisure: true, beach: true, family:false, friends:true)
trip3 = Trip.create(name: "Last Work Trip to Boston", description: "Trip to Boston to say goodbye to coworkers and teacher in BMTN", location_id:3 , user_id: 1, start_date: Date.new(2017,10,12), end_date: Date.new(2017,10,14), people_involved: "Toni/Kirk/Zipporah, all the NE teachers", events: "Filling in new staff on BMTN quirks, saying goodbyes", work:true, leisure: false, beach:false, family:false, friends:false)
trip4 = Trip.create(name: "Miami Beach Trip 2017", description: "Beach Trip while Narine was on spring break", location_id:4 , user_id: 1, start_date: Date.new(2017,3,20), end_date: Date.new(2017,3,25), people_involved: "Narine, Willie", events: "Beach, cuban coffee, and arepas", work:false, leisure: true, beach:true, family:false, friends:true)
trip5 = Trip.create(name: "Asheville Mountains and Beers", description: "Trip to visit Robby after a work trip in nearby Greensboro. Went on a hike in the smokies and a bunch of breweries. Best food: Biscuithead", location_id:5 , user_id: 1, start_date: Date.new(2017,4,21), end_date: Date.new(2017,4,24), people_involved: "Robby and Jen", events: "Spring Mountains, Breweries, delish food", work:false, leisure: true, beach:false, family:false, friends:true)
