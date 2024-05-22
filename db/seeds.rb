# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "=========="
puts "Cleaning the DB..."

User.destroy_all
Spot.destroy_all
# SpotDate.destroy_all
Alert.destroy_all

puts "Done cleaning the DB..."
puts "----------"
puts "Creating spots..."

# spots close to the seeded users
spot1 = Spot.create!(
  address: "Hayato's drop-off location",
  latitude: 35.651166,
  longitude: 139.733786,
  label: "Hayato's drop-off location"
)
spot2 = Spot.create!(
  address: "Rei's drop-off location",
  latitude: 35.64866328715169,
  longitude: 139.734738025795,
  label: "Rei's drop-off location"
)
spot3 = Spot.create!(
  address: "Jun's closest drop-off location",
  latitude: 35.64870940673248,
  longitude: 139.73846075767176,
  label: "Jun's closest drop-off location"
)

# 7 additional arbitrary spots in Minato

spot4 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.65169078533378,
  longitude: 139.73371160956918,
  label: "An arbitrary spot"
)

spot5 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.651258026916146,
  longitude: 139.7331926021248,
  label: "An arbitrary spot"
)

spot6 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.649059018854324,
  longitude: 139.73416173486055,
  label: "An arbitrary spot"
)

spot7 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.64870253145248,
  longitude: 139.73484838036836,
  label: "An arbitrary spot"
)

spot8 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.649612475082215,
  longitude: 139.73796212077858,
  label: "An arbitrary spot"
)
spot9 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.64954478173937,
  longitude: 139.738761419065,
  label: "An arbitrary spot"
)

spot10 = Spot.create!(
  address: "Keio University - Mita Campus, 45, Minato, 108",
  latitude: 35.64908736490124,
  longitude: 139.74230193496467,
  label: "An arbitrary spot"
)

puts "Done creating spots..."
puts "----------"
puts "Creating users..."
user1 = User.create!(
  email: "hayato@email.com",
  password: "111111",
  name: "Lord Hayato",
  line_id: "tacomarutaco",
  address: "1-chōme-21-6 Minamiazabu, Minato City, Tokyo 106-0047",
  spot_id: spot1.id,
  latitude: 35.65114768368308,
  longitude: 139.73340638949398,
  evening_alert: "21:00",
  morning_alert: "12:30"
)

user2 = User.create!(
  email: "rei@email.com",
  password: "222222",
  name: "Sugar Rei",
  line_id: "maxmaxreirei",
  address: "2-chōme-9-17 Minamiazabu, Minato City, Tokyo 106-0047",
  spot_id: spot2.id,
  latitude: 35.648650,
  longitude: 139.734500,
  evening_alert: "",
  morning_alert: "12:20"
)
user3 = User.create!(
  email: "jun@email.com",
  password: "333333",
  name: "Count Jun",
  line_id: "yoon_jjang",
  address: "2 Chome-19-26 Mita, Minato City, Tokyo 108-0073",
  # the coordinates of the above address is below.
  # However it will not be used because the app chould be able to update the information on its own.

  # latitude: 35.64887189170019,
  # longtitude: 139.73847914508494,

  evening_alert: "",
  morning_alert: "",
)
puts "Done creating users..."
puts "----------"
puts "Creating pickup details (spot dates)..."
spot1_rec = SpotDate.create!(
  date: Date.parse("2024-05-30"),
  collection_type: "recyclables",
  spot_id: spot1.id,
  scheduled_time: Time.parse("8:00")
)
spot1_combust = SpotDate.create!(
  date: Date.parse("2024-05-31"),
  collection_type: "combustible",
  spot_id: spot1.id,
  scheduled_time: Time.parse("12:30")
)
spot1_noncombust = SpotDate.create!(
  date: Date.parse("2024-06-01"),
  collection_type: "non-combustible",
  spot_id: spot1.id,
  scheduled_time: Time.parse("12:30")
)

spot2_rec = SpotDate.create!(
  date: Date.parse("2024-05-30"),
  collection_type: "recyclables",
  spot_id: spot2.id,
  scheduled_time: Time.parse("13:00")
)
spot2_combust = SpotDate.create!(
  date: Date.parse("2024-05-31"),
  collection_type: "combustible",
  spot_id: spot2.id,
  scheduled_time: Time.parse("15:30")
)
spot2_noncombust = SpotDate.create!(
  date: Date.parse("2024-06-01"),
  collection_type: "non-combustible",
  spot_id: spot2.id,
  scheduled_time: Time.parse("15:30")
)
puts "Done creating pickup details (spot dates)..."
puts "----------"
puts "Creating alerts..."

Alert.create!(
  message: "#{user1.name}, RECYCLABLES will be picked up tomorrow at #{spot1_rec.scheduled_time}",
  spot_date: spot1_rec,
  user: user1
)
Alert.create!(
  message: "#{user1.name}: RECYCLABLES is scheduled to be picked soon at #{spot1_rec.scheduled_time}",
  spot_date: spot1_rec,
  user: user1
)
Alert.create!(
  message: "#{user1.name}: The estimated time of arrivals for RECYCLABLES is  #{spot1_rec.scheduled_time}",
  spot_date: spot1_rec,
  user: user1
)
puts "Done creating alerts..."
puts "=========="
puts "Seeding completed with #{Spot.count} spots, #{User.count} users, #{SpotDate.count} pickup details, and #{Alert.count} alerts."
