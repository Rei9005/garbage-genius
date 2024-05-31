# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'date'

puts "=========="
puts "Cleaning the DB..."

HelpRequest.destroy_all
User.destroy_all
Spot.destroy_all
SpotDate.destroy_all
Alert.destroy_all
SpotVisit.destroy_all
HelpRequest.destroy_all


puts "Done cleaning the DB..."
puts "----------"
puts "Creating spots..."

# spots close to the seeded users
spot1 = Spot.create!(
  address: "Hayato's drop-off location",
  latitude: 35.651166,
  longitude: 139.733786,
  label: "An arbitrary spot"
)
spot2 = Spot.create!(
  address: "Rei's drop-off location",
  latitude: 35.64866328715169,
  longitude: 139.734738025795,
  label: "An arbitrary spot"
)
spot3 = Spot.create!(
  address: "Jun's closest drop-off location",
  latitude: 35.64870940673248,
  longitude: 139.73846075767176,
  label: "An arbitrary spot"
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

spot1 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.655244391588255,
  longitude: 139.73691276886458,
  label: "An arbitrary spot"
)

# The next 4 spots were made for the pitch

spot_pitch_1 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.6551504956737,
  longitude: 139.7368908194105,
  label: "An arbitrary spot"
)

spot_pitch_2 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.65508720214673,
  longitude: 139.736891914624,
  label: "An arbitrary spot"
)

spot_pitch_3 = Spot.create!(
  address: "An arbitrary spot",
  latitude: 35.65489078303709,
  longitude: 139.73685094381582,
  label: "An arbitrary spot"
)

# Random spots for the pitch, but these won't have schedules associated with them
spot21 = Spot.create!( address: "An arbitrary spot", latitude: 35.65723216, longitude: 139.73234483, label: "An arbitrary spot" )
spot22 = Spot.create!( address: "An arbitrary spot", latitude: 35.65719582, longitude: 139.73934361, label: "An arbitrary spot" )
spot23 = Spot.create!( address: "An arbitrary spot", latitude: 35.65133787, longitude: 139.73416985, label: "An arbitrary spot" )
spot24 = Spot.create!( address: "An arbitrary spot", latitude: 35.65365321, longitude: 139.73234738, label: "An arbitrary spot" )
spot25 = Spot.create!( address: "An arbitrary spot", latitude: 35.65831784, longitude: 139.73848601, label: "An arbitrary spot" )
spot26 = Spot.create!( address: "An arbitrary spot", latitude: 35.65131358, longitude: 139.73648459, label: "An arbitrary spot" )
spot27 = Spot.create!( address: "An arbitrary spot", latitude: 35.65469688, longitude: 139.73347764, label: "An arbitrary spot" )
spot28 = Spot.create!( address: "An arbitrary spot", latitude: 35.65061814, longitude: 139.73583131, label: "An arbitrary spot" )
spot29 = Spot.create!( address: "An arbitrary spot", latitude: 35.65341462, longitude: 139.74016265, label: "An arbitrary spot" )
spot30 = Spot.create!( address: "An arbitrary spot", latitude: 35.65654559, longitude: 139.7369558, label: "An arbitrary spot" )
spot31 = Spot.create!( address: "An arbitrary spot", latitude: 35.65248352, longitude: 139.73638088, label: "An arbitrary spot" )
spot32 = Spot.create!( address: "An arbitrary spot", latitude: 35.655284, longitude: 139.73783796, label: "An arbitrary spot" )
spot33 = Spot.create!( address: "An arbitrary spot", latitude: 35.65269813, longitude: 139.73920332, label: "An arbitrary spot" )
spot34 = Spot.create!( address: "An arbitrary spot", latitude: 35.65208842, longitude: 139.74040273, label: "An arbitrary spot" )
spot35 = Spot.create!( address: "An arbitrary spot", latitude: 35.65178467, longitude: 139.73886434, label: "An arbitrary spot" )
spot36 = Spot.create!( address: "An arbitrary spot", latitude: 35.65737979, longitude: 139.73999834, label: "An arbitrary spot" )
spot37 = Spot.create!( address: "An arbitrary spot", latitude: 35.65814012, longitude: 139.73938304, label: "An arbitrary spot" )
spot38 = Spot.create!( address: "An arbitrary spot", latitude: 35.65506039, longitude: 139.73862723, label: "An arbitrary spot" )
spot39 = Spot.create!( address: "An arbitrary spot", latitude: 35.65676, longitude: 139.73628645, label: "An arbitrary spot" )
spot40 = Spot.create!( address: "An arbitrary spot", latitude: 35.65426135, longitude: 139.73279115, label: "An arbitrary spot" )
spot41 = Spot.create!( address: "An arbitrary spot", latitude: 35.65665014, longitude: 139.73949553, label: "An arbitrary spot" )
spot42 = Spot.create!( address: "An arbitrary spot", latitude: 35.65561957, longitude: 139.73505937, label: "An arbitrary spot" )
spot43 = Spot.create!( address: "An arbitrary spot", latitude: 35.654538, longitude: 139.73749519, label: "An arbitrary spot" )
spot44 = Spot.create!( address: "An arbitrary spot", latitude: 35.65118077, longitude: 139.73732531, label: "An arbitrary spot" )
spot45 = Spot.create!( address: "An arbitrary spot", latitude: 35.65693672, longitude: 139.74128836, label: "An arbitrary spot" )


puts "Done creating spots..."
puts "----------"
puts "Creating users..."
user1 = User.create!(
  email: "hayato@email.com",
  password: "111111",
  name: "Hayato",
  line_id: "tacomarutaco",
  address: "1-chōme-21-6 Minamiazabu, Minato City, Tokyo 106-0047",
  spot_id: spot1.id,
  latitude: 35.65114768368308,
  longitude: 139.73340638949398,
  evening_alert_at: "",
  morning_alert_at: ""
)

user2 = User.create!(
  email: "rei@email.com",
  password: "222222",
  name: "Sugar Rei",
  line_id: "maxmaxreirei",
  address: "2-chōme-9-17 Minamiazabu, Minato City, Tokyo 106-0047",

  latitude: 35.648650,
  longitude: 139.734500,

  evening_alert: true,
  morning_alert: true,

  evening_alert_at: "16:31",
  morning_alert_at: "12:20"
)

user3 = User.create!(
  email: "jun@email.com",
  password: "333333",
  name: "Jun",
  line_id: "yoon_jjang",
  address: "2 Chome-19-26 Mita, Minato City, Tokyo 108-0073",
  # the coordinates of the above address is below.
  # However it will not be used because the app chould be able to update the information on its own.

  # latitude: 35.64887189170019,
  # longtitude: 139.73847914508494,

  evening_alert_at: "",
  morning_alert_at: "",
)

# Users 4-6 were created to test HelpRequest feature
user4 = User.create!(
  email: "oscar@email.com",
  password: "444444",
  name: "Oscar",
  line_id: "oscar_the_grouch",
  address: "",
  spot_id: spot1.id,
  # Oscar is simply assigned to spot1
)

puts "Done creating users..."
puts "----------"
puts "Creating pickup details (spot dates)..."
# @spot_schedule = SpotDate.create!(
#   date: Date.parse("2024-05-30"),
#   collection_type: "recyclables",
#   spot_id: spot1.id,
#   scheduled_time: Time.parse("8:00")
# )
# @spot1_combust = SpotDate.create!(
#   date: Date.parse("2024-05-31"),
#   collection_type: "combustible",
#   spot_id: spot1.id,
#   scheduled_time: Time.parse("12:30")
# )
# @spot1_noncombust = SpotDate.create!(
#   date: Date.parse("2024-06-01"),
#   collection_type: "non-combustible",
#   spot_id: spot1.id,
#   scheduled_time: Time.parse("12:30")
# )

# @spot2_rec = SpotDate.create!(
#   date: Date.parse("2024-05-30"),
#   collection_type: "recyclables",
#   spot_id: spot2.id,
#   scheduled_time: Time.parse("13:00")
# )
# @spot2_combust = SpotDate.create!(
#   date: Date.parse("2024-05-31"),
#   collection_type: "combustible",
#   spot_id: spot2.id,
#   scheduled_time: Time.parse("15:30")
# )
# @spot2_noncombust = SpotDate.create!(
#   date: Date.parse("2024-06-01"),
#   collection_type: "non-combustible",
#   spot_id: spot2.id,
#   scheduled_time: Time.parse("15:30")
# )


# Seeding pickup schedule for Hayato based on official Minato schdule
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR1 = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR2  = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR3 = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR4 = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR5 = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))


# Seeding pickup schedule for the Demo Night Pitch
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR1 = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR2  = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR3 = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR4 = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule_HR5 = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot_pitch_3.id, scheduled_time: Time.parse("08:00"))
#

puts "Done creating pickup details (spot dates)..."
puts "----------"
puts "Creating alerts..."

Alert.create!(
  message: "#{user1.name}, RECYCLABLES will be picked up tomorrow at #{@spot_schedule.scheduled_time}",
  spot_date: @spot_schedule,
  user: user1
)
Alert.create!(
  message: "#{user1.name}: RECYCLABLES is scheduled to be picked soon at #{@spot_schedule.scheduled_time}",
  spot_date: @spot_schedule,
  user: user1
)
Alert.create!(
  message: "#{user1.name}: The estimated time of arrivals for RECYCLABLES is  #{@spot_schedule.scheduled_time}",
  spot_date: @spot_schedule,
  user: user1
)
puts "Done creating alerts..."
puts "----------"
puts "Creating history of visits..."

SpotDate.find_each do |spot_date|
  rand(5..7).times do
    SpotVisit.create(
      spot_date: spot_date,
      user: User.all.sample,
      time: spot_date.scheduled_time + rand(15..159).minutes
    )
  end
end


puts "Done creating visits..."
puts "----------"
puts "Creating help requests..."


request1 = HelpRequest.create!(
asker: user4,
spot_date: @spot_schedule_HR3
)

puts "Done creating help requests..."


puts "=========="
puts "Seeded with #{Spot.count} spots, #{User.count} users, #{SpotDate.count} pickup details, #{Alert.count} alerts, #{SpotVisit.count} reported visits, and #{HelpRequest.count} help requests."

# This is junk comment to differentiate the file from a previous push
