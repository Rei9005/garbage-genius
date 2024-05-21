# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning the DB...'

User.destroy_all
Spot.destroy_all
SpotDate.destroy_all
Alert.destroy_all

puts "Creating spots and users..."

spot1 = Spot.create!(
  address: "2 Chome-11-3 Meguro, Meguro City, Tokyo 153-0063",
  latitude: 35.6339864,
  longtitude: 139.7081156,
  label: "Le Wagon"
)
spot2 = Spot.create!(
  address: "unnamed road, Shimomegura 3-chome, Meguro, 153-0064, Japan",
  latitude: 35.6340941868853,
  longtitude: 139.708171926389,
  label: "spot2"
)
spot3 = Spot.create!(
  address: "unnamed road, Shimomeguro 3-chome, Meguro, 153-0064, Japan",
  latitude: 35.6339450218337,
  longtitude: 139.708337552796,
  label: "spot3"
)

puts "Done creating spots..."
puts "Creating users..."
hayato = User.create!(
  email: "hayato@email.com",
  password: "111111",
  name: "Hayato the Savage",
  line_id: "tacomarutaco",
  address: "2-chōme-5-8 Meguro, Meguro City, Tokyo 153-0063",
  spot_id: spot2.id,
  longtitude: 35.63388057,
  latitude: 139.7084001,
  evening_alert: "21:00",
  morning_alert: "12:30"
)
User.create!(
  email: "rei@email.com",
  password: "222222",
  name: "Rei Sugarfoot",
  line_id: "maxmaxreirei",
  address: "2-chōme-5-7 Meguro, Meguro City, Tokyo 153-0063",
  spot_id: spot3.id,
  longtitude: 35.63421049,
  latitude: 139.7082023,
  evening_alert: "",
  morning_alert: "12:20"
)
User.create!(
  email: "jun@email.com",
  password: "333333",
  name: "Jun the Typhoon",
  line_id: "yoon_jjang",
  address: "2-chōme-7-17 Meguro, Meguro City, Tokyo 153-0063",
  longtitude: 35.63399291,
  latitude: 139.7084638,
  evening_alert: "",
  morning_alert: ""
)



thirty_rec = SpotDate.create!(
  date: Date.parse("2024-05-30"),
  collection_type: "recyclables",
  spot_id: spot2.id,
  schedule_time: "14:30"
)
thirtyone_rec = SpotDate.create!(
  date: Date.parse("2024-05-31"),
  collection_type: "combustible",
  spot_id: spot2.id,
  schedule_time: "12:30"
)
first_rec = SpotDate.create!(
  date: Date.parse("2024-06-01"),
  collection_type: "non-combustible",
  spot_id: spot2.id,
  schedule_time: "12:30"
)

SpotDate.create!(
  date: Date.parse("2024-05-30"),
  collection_type: "recyclables",
  spot_id: spot3.id,
  schedule_time: "14:30"
)
SpotDate.create!(
  date: Date.parse("2024-05-31"),
  collection_type: "combustible",
  spot_id: spot3.id,
  schedule_time: "12:30"
)
SpotDate.create!(
  date: Date.parse("2024-06-01"),
  collection_type: "non-combustible",
  spot_id: spot3.id,
  schedule_time: "12:30"
)


Alert.create!(
  message: "Hi #{hayato.name}: Recyclables will be picked up tomorrow at #{thirty_rec.schedule_time}",
  spot_date: thirty_rec,
  user: hayato
)
Alert.create!(
  message: "Hi #{hayato.name}: Recyclables will be picked soon at #{thirtyone_rec.schedule_time}",
  spot_date: thirtyone_rec,
  user: hayato
)
Alert.create!(
  message: "Hi #{hayato.name}: The estimated time of arrivals for recyclables is  #{first_rec.schedule_time}",
  spot_date: first_rec,
  user: hayato
)

puts "Seeding completed."
