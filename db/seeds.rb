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

# spot11 = Spot.create!( address: "An arbitrary spot", latitude: 35.65261608, longitude: 139.74024301, label: "An rbitrary spot" )
# spot12 = Spot.create!( address: "An arbitrary spot", latitude: 35.63938127, longitude: 139.73638016, label: "An rbitrary spot" )
# spot13 = Spot.create!( address: "An arbitrary spot", latitude: 35.65695674, longitude: 139.73163679, label: "An rbitrary spot" )
# spot14 = Spot.create!( address: "An arbitrary spot", latitude: 35.64920541, longitude: 139.74498919, label: "An rbitrary spot" )
# spot15 = Spot.create!( address: "An arbitrary spot", latitude: 35.65698941, longitude: 139.74862684, label: "An rbitrary spot" )
# spot16 = Spot.create!( address: "An arbitrary spot", latitude: 35.65906183, longitude: 139.73640742, label: "An rbitrary spot" )
# spot17 = Spot.create!( address: "An arbitrary spot", latitude: 35.63702295, longitude: 139.73095111, label: "An rbitrary spot" )
# spot18 = Spot.create!( address: "An arbitrary spot", latitude: 35.65206352, longitude: 139.73664242, label: "An rbitrary spot" )
# spot19 = Spot.create!( address: "An arbitrary spot", latitude: 35.6510962, longitude: 139.72817268, label: "An rbitrary spot" )
# spot20 = Spot.create!( address: "An arbitrary spot", latitude: 35.65061408, longitude: 139.72389262, label: "An rbitrary spot" )
# spot21 = Spot.create!( address: "An arbitrary spot", latitude: 35.65944178, longitude: 139.71953849, label: "An rbitrary spot" )
# spot22 = Spot.create!( address: "An arbitrary spot", latitude: 35.6539871, longitude: 139.71982958, label: "An rbitrary spot" )
# spot23 = Spot.create!( address: "An arbitrary spot", latitude: 35.65136774, longitude: 139.72334025, label: "An rbitrary spot" )
# spot24 = Spot.create!( address: "An arbitrary spot", latitude: 35.64818478, longitude: 139.72439649, label: "An rbitrary spot" )
# spot25 = Spot.create!( address: "An arbitrary spot", latitude: 35.65768876, longitude: 139.74924593, label: "An rbitrary spot" )
# spot26 = Spot.create!( address: "An arbitrary spot", latitude: 35.65150651, longitude: 139.75138299, label: "An rbitrary spot" )
# spot27 = Spot.create!( address: "An arbitrary spot", latitude: 35.64252809, longitude: 139.72986569, label: "An rbitrary spot" )
# spot28 = Spot.create!( address: "An arbitrary spot", latitude: 35.63981404, longitude: 139.72503675, label: "An rbitrary spot" )
# spot29 = Spot.create!( address: "An arbitrary spot", latitude: 35.63743946, longitude: 139.73417282, label: "An rbitrary spot" )
# spot30 = Spot.create!( address: "An arbitrary spot", latitude: 35.65893987, longitude: 139.73010309, label: "An rbitrary spot" )
# spot31 = Spot.create!( address: "An arbitrary spot", latitude: 35.63972187, longitude: 139.74207745, label: "An rbitrary spot" )
# spot32 = Spot.create!( address: "An arbitrary spot", latitude: 35.66032088, longitude: 139.72045688, label: "An rbitrary spot" )
# spot33 = Spot.create!( address: "An arbitrary spot", latitude: 35.641808, longitude: 139.73559145, label: "An rbitrary spot" )
# spot34 = Spot.create!( address: "An arbitrary spot", latitude: 35.64825281, longitude: 139.74876022, label: "An rbitrary spot" )
# spot35 = Spot.create!( address: "An arbitrary spot", latitude: 35.63704065, longitude: 139.73363936, label: "An rbitrary spot" )
# spot36 = Spot.create!( address: "An arbitrary spot", latitude: 35.64809678, longitude: 139.72427938, label: "An rbitrary spot" )
# spot37 = Spot.create!( address: "An arbitrary spot", latitude: 35.66063842, longitude: 139.73093994, label: "An rbitrary spot" )
# spot38 = Spot.create!( address: "An arbitrary spot", latitude: 35.66069478, longitude: 139.73137534, label: "An rbitrary spot" )
# spot39 = Spot.create!( address: "An arbitrary spot", latitude: 35.66399215, longitude: 139.72564297, label: "An rbitrary spot" )
# spot40 = Spot.create!( address: "An arbitrary spot", latitude: 35.66106787, longitude: 139.74242674, label: "An rbitrary spot" )
# spot41 = Spot.create!( address: "An arbitrary spot", latitude: 35.66131134, longitude: 139.72678495, label: "An rbitrary spot" )
# spot42 = Spot.create!( address: "An arbitrary spot", latitude: 35.64607052, longitude: 139.74540062, label: "An rbitrary spot" )
# spot43 = Spot.create!( address: "An arbitrary spot", latitude: 35.66254329, longitude: 139.73918565, label: "An rbitrary spot" )
# spot44 = Spot.create!( address: "An arbitrary spot", latitude: 35.65370853, longitude: 139.73444922, label: "An rbitrary spot" )
# spot45 = Spot.create!( address: "An arbitrary spot", latitude: 35.64828316, longitude: 139.73914259, label: "An rbitrary spot" )
# spot46 = Spot.create!( address: "An arbitrary spot", latitude: 35.65382745, longitude: 139.74007921, label: "An rbitrary spot" )
# spot47 = Spot.create!( address: "An arbitrary spot", latitude: 35.65711982, longitude: 139.74709664, label: "An rbitrary spot" )
# spot48 = Spot.create!( address: "An arbitrary spot", latitude: 35.64583706, longitude: 139.7268443, label: "An rbitrary spot" )
# spot49 = Spot.create!( address: "An arbitrary spot", latitude: 35.65565847, longitude: 139.74860247, label: "An rbitrary spot" )
# spot50 = Spot.create!( address: "An arbitrary spot", latitude: 35.6518913, longitude: 139.71893604, label: "An rbitrary spot" )
# spot51 = Spot.create!( address: "An arbitrary spot", latitude: 35.65790647, longitude: 139.72144241, label: "An rbitrary spot" )
# spot52 = Spot.create!( address: "An arbitrary spot", latitude: 35.65643854, longitude: 139.73292587, label: "An rbitrary spot" )
# spot53 = Spot.create!( address: "An arbitrary spot", latitude: 35.65135501, longitude: 139.72474576, label: "An rbitrary spot" )
# spot54 = Spot.create!( address: "An arbitrary spot", latitude: 35.66402744, longitude: 139.73297827, label: "An rbitrary spot" )
# spot55 = Spot.create!( address: "An arbitrary spot", latitude: 35.65740996, longitude: 139.74806676, label: "An rbitrary spot" )
# spot56 = Spot.create!( address: "An arbitrary spot", latitude: 35.63995714, longitude: 139.7420835, label: "An rbitrary spot" )
# spot57 = Spot.create!( address: "An arbitrary spot", latitude: 35.65462825, longitude: 139.72424036, label: "An rbitrary spot" )
# spot58 = Spot.create!( address: "An arbitrary spot", latitude: 35.65618664, longitude: 139.72850438, label: "An rbitrary spot" )
# spot59 = Spot.create!( address: "An arbitrary spot", latitude: 35.64284395, longitude: 139.73114973, label: "An rbitrary spot" )
# spot60 = Spot.create!( address: "An arbitrary spot", latitude: 35.63874661, longitude: 139.7257419, label: "An rbitrary spot" )
# spot61 = Spot.create!( address: "An arbitrary spot", latitude: 35.66208541, longitude: 139.74358725, label: "An rbitrary spot" )
# spot62 = Spot.create!( address: "An arbitrary spot", latitude: 35.64946318, longitude: 139.73463393, label: "An rbitrary spot" )
# spot63 = Spot.create!( address: "An arbitrary spot", latitude: 35.63686182, longitude: 139.73515052, label: "An rbitrary spot" )
# spot64 = Spot.create!( address: "An arbitrary spot", latitude: 35.63910707, longitude: 139.72685348, label: "An rbitrary spot" )
# spot65 = Spot.create!( address: "An arbitrary spot", latitude: 35.64604518, longitude: 139.7229814, label: "An rbitrary spot" )
# spot66 = Spot.create!( address: "An arbitrary spot", latitude: 35.6580715, longitude: 139.73855421, label: "An rbitrary spot" )
# spot67 = Spot.create!( address: "An arbitrary spot", latitude: 35.65054942, longitude: 139.72085195, label: "An rbitrary spot" )
# spot68 = Spot.create!( address: "An arbitrary spot", latitude: 35.65506708, longitude: 139.72499619, label: "An rbitrary spot" )
# spot69 = Spot.create!( address: "An arbitrary spot", latitude: 35.65298156, longitude: 139.72922917, label: "An rbitrary spot" )
# spot70 = Spot.create!( address: "An arbitrary spot", latitude: 35.65315247, longitude: 139.72581099, label: "An rbitrary spot" )
# spot71 = Spot.create!( address: "An arbitrary spot", latitude: 35.65408602, longitude: 139.74661703, label: "An rbitrary spot" )
# spot72 = Spot.create!( address: "An arbitrary spot", latitude: 35.65140982, longitude: 139.72894772, label: "An rbitrary spot" )
# spot73 = Spot.create!( address: "An arbitrary spot", latitude: 35.65524259, longitude: 139.74523232, label: "An rbitrary spot" )
# spot74 = Spot.create!( address: "An arbitrary spot", latitude: 35.65569688, longitude: 139.7395695, label: "An rbitrary spot" )
# spot75 = Spot.create!( address: "An arbitrary spot", latitude: 35.65201846, longitude: 139.75077172, label: "An rbitrary spot" )
# spot76 = Spot.create!( address: "An arbitrary spot", latitude: 35.66104841, longitude: 139.73120522, label: "An rbitrary spot" )
# spot77 = Spot.create!( address: "An arbitrary spot", latitude: 35.65687722, longitude: 139.73162062, label: "An rbitrary spot" )
# spot78 = Spot.create!( address: "An arbitrary spot", latitude: 35.655614, longitude: 139.74653843, label: "An rbitrary spot" )
# spot79 = Spot.create!( address: "An arbitrary spot", latitude: 35.64836696, longitude: 139.74949535, label: "An rbitrary spot" )
# spot80 = Spot.create!( address: "An arbitrary spot", latitude: 35.65946149, longitude: 139.73032095, label: "An rbitrary spot" )
# spot81 = Spot.create!( address: "An arbitrary spot", latitude: 35.64724255, longitude: 139.72248353, label: "An rbitrary spot" )
# spot82 = Spot.create!( address: "An arbitrary spot", latitude: 35.66109208, longitude: 139.73513639, label: "An rbitrary spot" )
# spot83 = Spot.create!( address: "An arbitrary spot", latitude: 35.64587379, longitude: 139.72189867, label: "An rbitrary spot" )
# spot84 = Spot.create!( address: "An arbitrary spot", latitude: 35.66097583, longitude: 139.73277435, label: "An rbitrary spot" )
# spot85 = Spot.create!( address: "An arbitrary spot", latitude: 35.65079313, longitude: 139.74965684, label: "An rbitrary spot" )
# spot86 = Spot.create!( address: "An arbitrary spot", latitude: 35.65793954, longitude: 139.73834847, label: "An rbitrary spot" )
# spot87 = Spot.create!( address: "An arbitrary spot", latitude: 35.6627783, longitude: 139.74111507, label: "An rbitrary spot" )
# spot88 = Spot.create!( address: "An arbitrary spot", latitude: 35.63935513, longitude: 139.73646757, label: "An rbitrary spot" )
# spot89 = Spot.create!( address: "An arbitrary spot", latitude: 35.65616962, longitude: 139.71795136, label: "An rbitrary spot" )
# spot90 = Spot.create!( address: "An arbitrary spot", latitude: 35.66264993, longitude: 139.72678895, label: "An rbitrary spot" )
# spot91 = Spot.create!( address: "An arbitrary spot", latitude: 35.65735372, longitude: 139.72559807, label: "An rbitrary spot" )
# spot92 = Spot.create!( address: "An arbitrary spot", latitude: 35.6540856, longitude: 139.71942601, label: "An rbitrary spot" )
# spot93 = Spot.create!( address: "An arbitrary spot", latitude: 35.64985199, longitude: 139.74800969, label: "An rbitrary spot" )
# spot94 = Spot.create!( address: "An arbitrary spot", latitude: 35.64619757, longitude: 139.74576479, label: "An rbitrary spot" )
# spot95 = Spot.create!( address: "An arbitrary spot", latitude: 35.64767729, longitude: 139.72004178, label: "An rbitrary spot" )
# spot96 = Spot.create!( address: "An arbitrary spot", latitude: 35.6515835, longitude: 139.71844082, label: "An rbitrary spot" )
# spot97 = Spot.create!( address: "An arbitrary spot", latitude: 35.65019953, longitude: 139.73035513, label: "An rbitrary spot" )
# spot98 = Spot.create!( address: "An arbitrary spot", latitude: 35.65746534, longitude: 139.74975869, label: "An rbitrary spot" )
# spot99 = Spot.create!( address: "An arbitrary spot", latitude: 35.6386536, longitude: 139.74183232, label: "An rbitrary spot" )
# spot100 = Spot.create!( address: "An arbitrary spot", latitude: 35.66002502, longitude: 139.73494986, label: "An rbitrary spot" )
# spot101 = Spot.create!( address: "An arbitrary spot", latitude: 35.65287907, longitude: 139.74219551, label: "An rbitrary spot" )
# spot102 = Spot.create!( address: "An arbitrary spot", latitude: 35.65433802, longitude: 139.73071821, label: "An rbitrary spot" )
# spot103 = Spot.create!( address: "An arbitrary spot", latitude: 35.64573154, longitude: 139.74942824, label: "An rbitrary spot" )
# spot104 = Spot.create!( address: "An arbitrary spot", latitude: 35.63715299, longitude: 139.72945173, label: "An rbitrary spot" )
# spot105 = Spot.create!( address: "An arbitrary spot", latitude: 35.6389305, longitude: 139.73463249, label: "An rbitrary spot" )
# spot106 = Spot.create!( address: "An arbitrary spot", latitude: 35.64392678, longitude: 139.72921941, label: "An rbitrary spot" )
# spot107 = Spot.create!( address: "An arbitrary spot", latitude: 35.65707873, longitude: 139.72342495, label: "An rbitrary spot" )
# spot108 = Spot.create!( address: "An arbitrary spot", latitude: 35.64838442, longitude: 139.73778449, label: "An rbitrary spot" )
# spot109 = Spot.create!( address: "An arbitrary spot", latitude: 35.65331366, longitude: 139.74250274, label: "An rbitrary spot" )
# spot110 = Spot.create!( address: "An arbitrary spot", latitude: 35.64002358, longitude: 139.7292738, label: "An rbitrary spot" )
# spot111 = Spot.create!( address: "An arbitrary spot", latitude: 35.66088552, longitude: 139.72907626, label: "An rbitrary spot" )
# spot112 = Spot.create!( address: "An arbitrary spot", latitude: 35.64297354, longitude: 139.72479054, label: "An rbitrary spot" )
# spot113 = Spot.create!( address: "An arbitrary spot", latitude: 35.660782, longitude: 139.73444505, label: "An rbitrary spot" )
# spot114 = Spot.create!( address: "An arbitrary spot", latitude: 35.66187779, longitude: 139.72197732, label: "An rbitrary spot" )
# spot115 = Spot.create!( address: "An arbitrary spot", latitude: 35.65033446, longitude: 139.72454406, label: "An rbitrary spot" )
# spot116 = Spot.create!( address: "An arbitrary spot", latitude: 35.64655121, longitude: 139.73280541, label: "An rbitrary spot" )
# spot117 = Spot.create!( address: "An arbitrary spot", latitude: 35.64814329, longitude: 139.72779573, label: "An rbitrary spot" )
# spot118 = Spot.create!( address: "An arbitrary spot", latitude: 35.63764984, longitude: 139.73555174, label: "An rbitrary spot" )
# spot119 = Spot.create!( address: "An arbitrary spot", latitude: 35.6544697, longitude: 139.73763758, label: "An rbitrary spot" )
# spot120 = Spot.create!( address: "An arbitrary spot", latitude: 35.66385294, longitude: 139.73898192, label: "An rbitrary spot" )
# spot121 = Spot.create!( address: "An arbitrary spot", latitude: 35.64897499, longitude: 139.7399282, label: "An rbitrary spot" )
# spot122 = Spot.create!( address: "An arbitrary spot", latitude: 35.65594434, longitude: 139.71974088, label: "An rbitrary spot" )
# spot123 = Spot.create!( address: "An arbitrary spot", latitude: 35.66305232, longitude: 139.73174232, label: "An rbitrary spot" )
# spot124 = Spot.create!( address: "An arbitrary spot", latitude: 35.64797343, longitude: 139.75008849, label: "An rbitrary spot" )
# spot125 = Spot.create!( address: "An arbitrary spot", latitude: 35.63988353, longitude: 139.72942238, label: "An rbitrary spot" )
# spot126 = Spot.create!( address: "An arbitrary spot", latitude: 35.64710633, longitude: 139.71971079, label: "An rbitrary spot" )
# spot127 = Spot.create!( address: "An arbitrary spot", latitude: 35.65430145, longitude: 139.73115453, label: "An rbitrary spot" )
# spot128 = Spot.create!( address: "An arbitrary spot", latitude: 35.64805543, longitude: 139.7314058, label: "An rbitrary spot" )
# spot129 = Spot.create!( address: "An arbitrary spot", latitude: 35.65514181, longitude: 139.74702082, label: "An rbitrary spot" )
# spot130 = Spot.create!( address: "An arbitrary spot", latitude: 35.65559781, longitude: 139.73858644, label: "An rbitrary spot" )
# spot131 = Spot.create!( address: "An arbitrary spot", latitude: 35.63902363, longitude: 139.72832202, label: "An rbitrary spot" )
# spot132 = Spot.create!( address: "An arbitrary spot", latitude: 35.65407397, longitude: 139.72528376, label: "An rbitrary spot" )
# spot133 = Spot.create!( address: "An arbitrary spot", latitude: 35.6593332, longitude: 139.72551548, label: "An rbitrary spot" )
# spot134 = Spot.create!( address: "An arbitrary spot", latitude: 35.6535026, longitude: 139.73891549, label: "An rbitrary spot" )
# spot135 = Spot.create!( address: "An arbitrary spot", latitude: 35.64302329, longitude: 139.72621804, label: "An rbitrary spot" )
# spot136 = Spot.create!( address: "An arbitrary spot", latitude: 35.6609735, longitude: 139.73236889, label: "An rbitrary spot" )
# spot137 = Spot.create!( address: "An arbitrary spot", latitude: 35.64459557, longitude: 139.72305288, label: "An rbitrary spot" )
# spot138 = Spot.create!( address: "An arbitrary spot", latitude: 35.66454327, longitude: 139.73800975, label: "An rbitrary spot" )
# spot139 = Spot.create!( address: "An arbitrary spot", latitude: 35.65145048, longitude: 139.74516266, label: "An rbitrary spot" )
# spot140 = Spot.create!( address: "An arbitrary spot", latitude: 35.65093181, longitude: 139.73454868, label: "An rbitrary spot" )
# spot141 = Spot.create!( address: "An arbitrary spot", latitude: 35.66558312, longitude: 139.73254447, label: "An rbitrary spot" )
# spot142 = Spot.create!( address: "An arbitrary spot", latitude: 35.65288986, longitude: 139.72159062, label: "An rbitrary spot" )
# spot143 = Spot.create!( address: "An arbitrary spot", latitude: 35.64499034, longitude: 139.72773484, label: "An rbitrary spot" )
# spot144 = Spot.create!( address: "An arbitrary spot", latitude: 35.66186226, longitude: 139.72659384, label: "An rbitrary spot" )
# spot145 = Spot.create!( address: "An arbitrary spot", latitude: 35.65547663, longitude: 139.73270682, label: "An rbitrary spot" )
# spot146 = Spot.create!( address: "An arbitrary spot", latitude: 35.65784334, longitude: 139.74474267, label: "An rbitrary spot" )
# spot147 = Spot.create!( address: "An arbitrary spot", latitude: 35.64838831, longitude: 139.74068364, label: "An rbitrary spot" )
# spot148 = Spot.create!( address: "An arbitrary spot", latitude: 35.64217728, longitude: 139.741563, label: "An rbitrary spot" )
# spot149 = Spot.create!( address: "An arbitrary spot", latitude: 35.64581371, longitude: 139.74121015, label: "An rbitrary spot" )
# spot150 = Spot.create!( address: "An arbitrary spot", latitude: 35.64571504, longitude: 139.72376335, label: "An rbitrary spot" )
# spot151 = Spot.create!( address: "An arbitrary spot", latitude: 35.66272586, longitude: 139.73766749, label: "An rbitrary spot" )
# spot152 = Spot.create!( address: "An arbitrary spot", latitude: 35.64656265, longitude: 139.71943363, label: "An rbitrary spot" )
# spot153 = Spot.create!( address: "An arbitrary spot", latitude: 35.64504883, longitude: 139.73675851, label: "An rbitrary spot" )
# spot154 = Spot.create!( address: "An arbitrary spot", latitude: 35.64631963, longitude: 139.71716924, label: "An rbitrary spot" )
# spot155 = Spot.create!( address: "An arbitrary spot", latitude: 35.64785983, longitude: 139.72170254, label: "An rbitrary spot" )
# spot156 = Spot.create!( address: "An arbitrary spot", latitude: 35.66073811, longitude: 139.74545207, label: "An rbitrary spot" )
# spot157 = Spot.create!( address: "An arbitrary spot", latitude: 35.65088936, longitude: 139.71954722, label: "An rbitrary spot" )
# spot158 = Spot.create!( address: "An arbitrary spot", latitude: 35.66238749, longitude: 139.73614642, label: "An rbitrary spot" )
# spot159 = Spot.create!( address: "An arbitrary spot", latitude: 35.6632596, longitude: 139.73306297, label: "An rbitrary spot" )
# spot160 = Spot.create!( address: "An arbitrary spot", latitude: 35.66270878, longitude: 139.73546633, label: "An rbitrary spot" )
# spot161 = Spot.create!( address: "An arbitrary spot", latitude: 35.64092698, longitude: 139.7273778, label: "An rbitrary spot" )
# spot162 = Spot.create!( address: "An arbitrary spot", latitude: 35.64413822, longitude: 139.74641035, label: "An rbitrary spot" )
# spot163 = Spot.create!( address: "An arbitrary spot", latitude: 35.63985731, longitude: 139.72319059, label: "An rbitrary spot" )
# spot164 = Spot.create!( address: "An arbitrary spot", latitude: 35.64967695, longitude: 139.72449732, label: "An rbitrary spot" )
# spot165 = Spot.create!( address: "An arbitrary spot", latitude: 35.66405298, longitude: 139.73546311, label: "An rbitrary spot" )
# spot166 = Spot.create!( address: "An arbitrary spot", latitude: 35.64888672, longitude: 139.74578748, label: "An rbitrary spot" )
# spot167 = Spot.create!( address: "An arbitrary spot", latitude: 35.64909398, longitude: 139.74843668, label: "An rbitrary spot" )
# spot168 = Spot.create!( address: "An arbitrary spot", latitude: 35.64410867, longitude: 139.72283033, label: "An rbitrary spot" )
# spot169 = Spot.create!( address: "An arbitrary spot", latitude: 35.65666306, longitude: 139.73782627, label: "An rbitrary spot" )
# spot170 = Spot.create!( address: "An arbitrary spot", latitude: 35.65403844, longitude: 139.71789079, label: "An rbitrary spot" )
# spot171 = Spot.create!( address: "An arbitrary spot", latitude: 35.65601473, longitude: 139.74358936, label: "An rbitrary spot" )
# spot172 = Spot.create!( address: "An arbitrary spot", latitude: 35.63913184, longitude: 139.73332602, label: "An rbitrary spot" )
# spot173 = Spot.create!( address: "An arbitrary spot", latitude: 35.63990185, longitude: 139.73894609, label: "An rbitrary spot" )
# spot174 = Spot.create!( address: "An arbitrary spot", latitude: 35.64821922, longitude: 139.72342438, label: "An rbitrary spot" )
# spot175 = Spot.create!( address: "An arbitrary spot", latitude: 35.65626455, longitude: 139.7467373, label: "An rbitrary spot" )
# spot176 = Spot.create!( address: "An arbitrary spot", latitude: 35.6413539, longitude: 139.73735123, label: "An rbitrary spot" )
# spot177 = Spot.create!( address: "An arbitrary spot", latitude: 35.65796718, longitude: 139.72666131, label: "An rbitrary spot" )
# spot178 = Spot.create!( address: "An arbitrary spot", latitude: 35.63712429, longitude: 139.73299333, label: "An rbitrary spot" )
# spot179 = Spot.create!( address: "An arbitrary spot", latitude: 35.65743043, longitude: 139.72041658, label: "An rbitrary spot" )
# spot180 = Spot.create!( address: "An arbitrary spot", latitude: 35.65460915, longitude: 139.74854827, label: "An rbitrary spot" )
# spot181 = Spot.create!( address: "An arbitrary spot", latitude: 35.6485442, longitude: 139.73377617, label: "An rbitrary spot" )
# spot182 = Spot.create!( address: "An arbitrary spot", latitude: 35.65887527, longitude: 139.74822747, label: "An rbitrary spot" )
# spot183 = Spot.create!( address: "An arbitrary spot", latitude: 35.64657988, longitude: 139.7450372, label: "An rbitrary spot" )
# spot184 = Spot.create!( address: "An arbitrary spot", latitude: 35.65119803, longitude: 139.74181905, label: "An rbitrary spot" )
# spot185 = Spot.create!( address: "An arbitrary spot", latitude: 35.64895732, longitude: 139.73852704, label: "An rbitrary spot" )
# spot186 = Spot.create!( address: "An arbitrary spot", latitude: 35.64443783, longitude: 139.74115293, label: "An rbitrary spot" )
# spot187 = Spot.create!( address: "An arbitrary spot", latitude: 35.65231754, longitude: 139.74567472, label: "An rbitrary spot" )
# spot188 = Spot.create!( address: "An arbitrary spot", latitude: 35.65751676, longitude: 139.74122613, label: "An rbitrary spot" )
# spot189 = Spot.create!( address: "An arbitrary spot", latitude: 35.64636564, longitude: 139.73919107, label: "An rbitrary spot" )
# spot190 = Spot.create!( address: "An arbitrary spot", latitude: 35.64332291, longitude: 139.74691624, label: "An rbitrary spot" )
# spot191 = Spot.create!( address: "An arbitrary spot", latitude: 35.64420462, longitude: 139.72329021, label: "An rbitrary spot" )
# spot192 = Spot.create!( address: "An arbitrary spot", latitude: 35.66017249, longitude: 139.73802997, label: "An rbitrary spot" )
# spot193 = Spot.create!( address: "An arbitrary spot", latitude: 35.64037828, longitude: 139.73313297, label: "An rbitrary spot" )
# spot194 = Spot.create!( address: "An arbitrary spot", latitude: 35.63844022, longitude: 139.73443298, label: "An rbitrary spot" )
# spot195 = Spot.create!( address: "An arbitrary spot", latitude: 35.63750386, longitude: 139.73908428, label: "An rbitrary spot" )
# spot196 = Spot.create!( address: "An arbitrary spot", latitude: 35.6544732, longitude: 139.72399049, label: "An rbitrary spot" )
# spot197 = Spot.create!( address: "An arbitrary spot", latitude: 35.65036361, longitude: 139.73040055, label: "An rbitrary spot" )
# spot198 = Spot.create!( address: "An arbitrary spot", latitude: 35.65377131, longitude: 139.73390769, label: "An rbitrary spot" )
# spot199 = Spot.create!( address: "An arbitrary spot", latitude: 35.66130549, longitude: 139.73517588, label: "An rbitrary spot" )
# spot200 = Spot.create!( address: "An arbitrary spot", latitude: 35.64785702, longitude: 139.7415468, label: "An rbitrary spot" )
# spot201 = Spot.create!( address: "An arbitrary spot", latitude: 35.63927459, longitude: 139.73945285, label: "An rbitrary spot" )
# spot202 = Spot.create!( address: "An arbitrary spot", latitude: 35.65091083, longitude: 139.74169199, label: "An rbitrary spot" )
# spot203 = Spot.create!( address: "An arbitrary spot", latitude: 35.66419964, longitude: 139.72606138, label: "An rbitrary spot" )
# spot204 = Spot.create!( address: "An arbitrary spot", latitude: 35.64537734, longitude: 139.72280653, label: "An rbitrary spot" )
# spot205 = Spot.create!( address: "An arbitrary spot", latitude: 35.64809279, longitude: 139.71949211, label: "An rbitrary spot" )
# spot206 = Spot.create!( address: "An arbitrary spot", latitude: 35.6492117, longitude: 139.72795268, label: "An rbitrary spot" )
# spot207 = Spot.create!( address: "An arbitrary spot", latitude: 35.65369548, longitude: 139.73273521, label: "An rbitrary spot" )
# spot208 = Spot.create!( address: "An arbitrary spot", latitude: 35.65140174, longitude: 139.73531603, label: "An rbitrary spot" )
# spot209 = Spot.create!( address: "An arbitrary spot", latitude: 35.6598417, longitude: 139.74340539, label: "An rbitrary spot" )
# spot210 = Spot.create!( address: "An arbitrary spot", latitude: 35.65572061, longitude: 139.74804709, label: "An rbitrary spot" )
# spot211 = Spot.create!( address: "An arbitrary spot", latitude: 35.65897184, longitude: 139.7240112, label: "An rbitrary spot" )
# spot212 = Spot.create!( address: "An arbitrary spot", latitude: 35.64480661, longitude: 139.73624009, label: "An rbitrary spot" )
# spot213 = Spot.create!( address: "An arbitrary spot", latitude: 35.66270569, longitude: 139.72346945, label: "An rbitrary spot" )
# spot214 = Spot.create!( address: "An arbitrary spot", latitude: 35.65231197, longitude: 139.72952553, label: "An rbitrary spot" )
# spot215 = Spot.create!( address: "An arbitrary spot", latitude: 35.6435542, longitude: 139.72447148, label: "An rbitrary spot" )
# spot216 = Spot.create!( address: "An arbitrary spot", latitude: 35.64119181, longitude: 139.7459738, label: "An rbitrary spot" )
# spot217 = Spot.create!( address: "An arbitrary spot", latitude: 35.64938151, longitude: 139.71682487, label: "An rbitrary spot" )
# spot218 = Spot.create!( address: "An arbitrary spot", latitude: 35.65135001, longitude: 139.72496526, label: "An rbitrary spot" )
# spot219 = Spot.create!( address: "An arbitrary spot", latitude: 35.64771259, longitude: 139.7174777, label: "An rbitrary spot" )
# spot220 = Spot.create!( address: "An arbitrary spot", latitude: 35.65966551, longitude: 139.74533006, label: "An rbitrary spot" )
# spot221 = Spot.create!( address: "An arbitrary spot", latitude: 35.65530136, longitude: 139.73495009, label: "An rbitrary spot" )
# spot222 = Spot.create!( address: "An arbitrary spot", latitude: 35.64325979, longitude: 139.73186841, label: "An rbitrary spot" )
# spot223 = Spot.create!( address: "An arbitrary spot", latitude: 35.64888481, longitude: 139.73519991, label: "An rbitrary spot" )
# spot224 = Spot.create!( address: "An arbitrary spot", latitude: 35.6538392, longitude: 139.74419791, label: "An rbitrary spot" )
# spot225 = Spot.create!( address: "An arbitrary spot", latitude: 35.64560135, longitude: 139.7456133, label: "An rbitrary spot" )
# spot226 = Spot.create!( address: "An arbitrary spot", latitude: 35.65743942, longitude: 139.72684898, label: "An rbitrary spot" )
# spot227 = Spot.create!( address: "An arbitrary spot", latitude: 35.65507255, longitude: 139.72880944, label: "An rbitrary spot" )
# spot228 = Spot.create!( address: "An arbitrary spot", latitude: 35.64414942, longitude: 139.72349431, label: "An rbitrary spot" )
# spot229 = Spot.create!( address: "An arbitrary spot", latitude: 35.64342592, longitude: 139.74262993, label: "An rbitrary spot" )
# spot230 = Spot.create!( address: "An arbitrary spot", latitude: 35.64293483, longitude: 139.73156815, label: "An rbitrary spot" )
# spot231 = Spot.create!( address: "An arbitrary spot", latitude: 35.64246633, longitude: 139.72666955, label: "An rbitrary spot" )
# spot232 = Spot.create!( address: "An arbitrary spot", latitude: 35.64624307, longitude: 139.72584819, label: "An rbitrary spot" )
# spot233 = Spot.create!( address: "An arbitrary spot", latitude: 35.6636152, longitude: 139.73379798, label: "An rbitrary spot" )
# spot234 = Spot.create!( address: "An arbitrary spot", latitude: 35.6501283, longitude: 139.7362192, label: "An rbitrary spot" )
# spot235 = Spot.create!( address: "An arbitrary spot", latitude: 35.6463957, longitude: 139.73298138, label: "An rbitrary spot" )
# spot236 = Spot.create!( address: "An arbitrary spot", latitude: 35.63862872, longitude: 139.728588, label: "An rbitrary spot" )
# spot237 = Spot.create!( address: "An arbitrary spot", latitude: 35.64683456, longitude: 139.72609362, label: "An rbitrary spot" )
# spot238 = Spot.create!( address: "An arbitrary spot", latitude: 35.64863633, longitude: 139.74411537, label: "An rbitrary spot" )
# spot239 = Spot.create!( address: "An arbitrary spot", latitude: 35.64515522, longitude: 139.71927806, label: "An rbitrary spot" )
# spot240 = Spot.create!( address: "An arbitrary spot", latitude: 35.65768387, longitude: 139.72888251, label: "An rbitrary spot" )
# spot241 = Spot.create!( address: "An arbitrary spot", latitude: 35.66062147, longitude: 139.74320667, label: "An rbitrary spot" )
# spot242 = Spot.create!( address: "An arbitrary spot", latitude: 35.64419498, longitude: 139.72632915, label: "An rbitrary spot" )
# spot243 = Spot.create!( address: "An arbitrary spot", latitude: 35.65991607, longitude: 139.74628895, label: "An rbitrary spot" )
# spot244 = Spot.create!( address: "An arbitrary spot", latitude: 35.64480671, longitude: 139.74045584, label: "An rbitrary spot" )
# spot245 = Spot.create!( address: "An arbitrary spot", latitude: 35.6397696, longitude: 139.72412687, label: "An rbitrary spot" )
# spot246 = Spot.create!( address: "An arbitrary spot", latitude: 35.65511123, longitude: 139.71702879, label: "An rbitrary spot" )
# spot247 = Spot.create!( address: "An arbitrary spot", latitude: 35.65182166, longitude: 139.72558553, label: "An rbitrary spot" )
# spot248 = Spot.create!( address: "An arbitrary spot", latitude: 35.65823611, longitude: 139.71991769, label: "An rbitrary spot" )
# spot249 = Spot.create!( address: "An arbitrary spot", latitude: 35.64294758, longitude: 139.73864238, label: "An rbitrary spot" )
# spot250 = Spot.create!( address: "An arbitrary spot", latitude: 35.64982339, longitude: 139.74718353, label: "An rbitrary spot" )
# spot251 = Spot.create!( address: "An arbitrary spot", latitude: 35.64563599, longitude: 139.74728862, label: "An rbitrary spot" )
# spot252 = Spot.create!( address: "An arbitrary spot", latitude: 35.65774953, longitude: 139.72796112, label: "An rbitrary spot" )
# spot253 = Spot.create!( address: "An arbitrary spot", latitude: 35.66383489, longitude: 139.73810174, label: "An rbitrary spot" )
# spot254 = Spot.create!( address: "An arbitrary spot", latitude: 35.6571161, longitude: 139.73209501, label: "An rbitrary spot" )
# spot255 = Spot.create!( address: "An arbitrary spot", latitude: 35.64785093, longitude: 139.72848259, label: "An rbitrary spot" )
# spot256 = Spot.create!( address: "An arbitrary spot", latitude: 35.65897915, longitude: 139.73858086, label: "An rbitrary spot" )
# spot257 = Spot.create!( address: "An arbitrary spot", latitude: 35.64487376, longitude: 139.72793551, label: "An rbitrary spot" )
# spot258 = Spot.create!( address: "An arbitrary spot", latitude: 35.64799194, longitude: 139.75054776, label: "An rbitrary spot" )
# spot259 = Spot.create!( address: "An arbitrary spot", latitude: 35.65017087, longitude: 139.73353441, label: "An rbitrary spot" )
# spot260 = Spot.create!( address: "An arbitrary spot", latitude: 35.65325817, longitude: 139.72969606, label: "An rbitrary spot" )
# spot261 = Spot.create!( address: "An arbitrary spot", latitude: 35.64519819, longitude: 139.73502974, label: "An rbitrary spot" )
# spot262 = Spot.create!( address: "An arbitrary spot", latitude: 35.66332867, longitude: 139.72594637, label: "An rbitrary spot" )
# spot263 = Spot.create!( address: "An arbitrary spot", latitude: 35.6536553, longitude: 139.72326663, label: "An rbitrary spot" )
# spot264 = Spot.create!( address: "An arbitrary spot", latitude: 35.66040266, longitude: 139.72494517, label: "An rbitrary spot" )
# spot265 = Spot.create!( address: "An arbitrary spot", latitude: 35.65390254, longitude: 139.7491971, label: "An rbitrary spot" )
# spot266 = Spot.create!( address: "An arbitrary spot", latitude: 35.6380572, longitude: 139.73652466, label: "An rbitrary spot" )
# spot267 = Spot.create!( address: "An arbitrary spot", latitude: 35.65559162, longitude: 139.72722851, label: "An rbitrary spot" )
# spot268 = Spot.create!( address: "An arbitrary spot", latitude: 35.65751719, longitude: 139.73259986, label: "An rbitrary spot" )
# spot269 = Spot.create!( address: "An arbitrary spot", latitude: 35.65202756, longitude: 139.7197476, label: "An rbitrary spot" )
# spot270 = Spot.create!( address: "An arbitrary spot", latitude: 35.6499789, longitude: 139.74719432, label: "An rbitrary spot" )
# spot271 = Spot.create!( address: "An arbitrary spot", latitude: 35.64426163, longitude: 139.7428445, label: "An rbitrary spot" )
# spot272 = Spot.create!( address: "An arbitrary spot", latitude: 35.64899632, longitude: 139.75083477, label: "An rbitrary spot" )
# spot273 = Spot.create!( address: "An arbitrary spot", latitude: 35.65770457, longitude: 139.72620388, label: "An rbitrary spot" )
# spot274 = Spot.create!( address: "An arbitrary spot", latitude: 35.6538546, longitude: 139.73334645, label: "An rbitrary spot" )
# spot275 = Spot.create!( address: "An arbitrary spot", latitude: 35.63965181, longitude: 139.74080424, label: "An rbitrary spot" )
# spot276 = Spot.create!( address: "An arbitrary spot", latitude: 35.654614, longitude: 139.7288901, label: "An rbitrary spot" )
# spot277 = Spot.create!( address: "An arbitrary spot", latitude: 35.64434022, longitude: 139.72806289, label: "An rbitrary spot" )
# spot278 = Spot.create!( address: "An arbitrary spot", latitude: 35.65291832, longitude: 139.74479256, label: "An rbitrary spot" )
# spot279 = Spot.create!( address: "An arbitrary spot", latitude: 35.6612781, longitude: 139.73680781, label: "An rbitrary spot" )
# spot280 = Spot.create!( address: "An arbitrary spot", latitude: 35.64602883, longitude: 139.74111045, label: "An rbitrary spot" )
# spot281 = Spot.create!( address: "An arbitrary spot", latitude: 35.65381987, longitude: 139.74083683, label: "An rbitrary spot" )
# spot282 = Spot.create!( address: "An arbitrary spot", latitude: 35.64654609, longitude: 139.72359586, label: "An rbitrary spot" )
# spot283 = Spot.create!( address: "An arbitrary spot", latitude: 35.65754103, longitude: 139.72527177, label: "An rbitrary spot" )
# spot284 = Spot.create!( address: "An arbitrary spot", latitude: 35.64543365, longitude: 139.74505446, label: "An rbitrary spot" )
# spot285 = Spot.create!( address: "An arbitrary spot", latitude: 35.63798474, longitude: 139.7360936, label: "An rbitrary spot" )
# spot286 = Spot.create!( address: "An arbitrary spot", latitude: 35.64938592, longitude: 139.72163543, label: "An rbitrary spot" )
# spot287 = Spot.create!( address: "An arbitrary spot", latitude: 35.64126489, longitude: 139.74593392, label: "An rbitrary spot" )
# spot288 = Spot.create!( address: "An arbitrary spot", latitude: 35.65254613, longitude: 139.72023896, label: "An rbitrary spot" )
# spot289 = Spot.create!( address: "An arbitrary spot", latitude: 35.65569547, longitude: 139.74885773, label: "An rbitrary spot" )
# spot290 = Spot.create!( address: "An arbitrary spot", latitude: 35.64016349, longitude: 139.73459462, label: "An rbitrary spot" )
# spot291 = Spot.create!( address: "An arbitrary spot", latitude: 35.6572156, longitude: 139.73817176, label: "An rbitrary spot" )
# spot292 = Spot.create!( address: "An arbitrary spot", latitude: 35.65253399, longitude: 139.72417668, label: "An rbitrary spot" )
# spot293 = Spot.create!( address: "An arbitrary spot", latitude: 35.65623392, longitude: 139.7260657, label: "An rbitrary spot" )
# spot294 = Spot.create!( address: "An arbitrary spot", latitude: 35.65893966, longitude: 139.74353285, label: "An rbitrary spot" )
# spot295 = Spot.create!( address: "An arbitrary spot", latitude: 35.6407777, longitude: 139.72326003, label: "An rbitrary spot" )
# spot296 = Spot.create!( address: "An arbitrary spot", latitude: 35.65841797, longitude: 139.7266677, label: "An rbitrary spot" )
# spot297 = Spot.create!( address: "An arbitrary spot", latitude: 35.66136721, longitude: 139.72155303, label: "An rbitrary spot" )
# spot298 = Spot.create!( address: "An arbitrary spot", latitude: 35.66349769, longitude: 139.73894847, label: "An rbitrary spot" )
# spot299 = Spot.create!( address: "An arbitrary spot", latitude: 35.64394399, longitude: 139.7418012, label: "An rbitrary spot" )
# spot300 = Spot.create!( address: "An arbitrary spot", latitude: 35.64435588, longitude: 139.72105602, label: "An rbitrary spot" )
# spot301 = Spot.create!( address: "An arbitrary spot", latitude: 35.6514889, longitude: 139.7429375, label: "An rbitrary spot" )
# spot302 = Spot.create!( address: "An arbitrary spot", latitude: 35.6599284, longitude: 139.73423616, label: "An rbitrary spot" )
# spot303 = Spot.create!( address: "An arbitrary spot", latitude: 35.65225573, longitude: 139.73356976, label: "An rbitrary spot" )
# spot304 = Spot.create!( address: "An arbitrary spot", latitude: 35.64251574, longitude: 139.73277013, label: "An rbitrary spot" )
# spot305 = Spot.create!( address: "An arbitrary spot", latitude: 35.65228422, longitude: 139.71689044, label: "An rbitrary spot" )
# spot306 = Spot.create!( address: "An arbitrary spot", latitude: 35.64319905, longitude: 139.74123771, label: "An rbitrary spot" )
# spot307 = Spot.create!( address: "An arbitrary spot", latitude: 35.64690859, longitude: 139.75070803, label: "An rbitrary spot" )
# spot308 = Spot.create!( address: "An arbitrary spot", latitude: 35.66431452, longitude: 139.7302462, label: "An rbitrary spot" )
# spot309 = Spot.create!( address: "An arbitrary spot", latitude: 35.66130738, longitude: 139.73231341, label: "An rbitrary spot" )
# spot310 = Spot.create!( address: "An arbitrary spot", latitude: 35.65481913, longitude: 139.7206987, label: "An rbitrary spot" )
# spot311 = Spot.create!( address: "An arbitrary spot", latitude: 35.6546091, longitude: 139.7474545, label: "An rbitrary spot" )
# spot312 = Spot.create!( address: "An arbitrary spot", latitude: 35.64780812, longitude: 139.72605453, label: "An rbitrary spot" )
# spot313 = Spot.create!( address: "An arbitrary spot", latitude: 35.65535191, longitude: 139.74209742, label: "An rbitrary spot" )
# spot314 = Spot.create!( address: "An arbitrary spot", latitude: 35.64008344, longitude: 139.73226195, label: "An rbitrary spot" )
# spot315 = Spot.create!( address: "An arbitrary spot", latitude: 35.65245106, longitude: 139.7352131, label: "An rbitrary spot" )
# spot316 = Spot.create!( address: "An arbitrary spot", latitude: 35.64872695, longitude: 139.73095367, label: "An rbitrary spot" )
# spot317 = Spot.create!( address: "An arbitrary spot", latitude: 35.64572171, longitude: 139.73793471, label: "An rbitrary spot" )
# spot318 = Spot.create!( address: "An arbitrary spot", latitude: 35.66275027, longitude: 139.73135995, label: "An rbitrary spot" )
# spot319 = Spot.create!( address: "An arbitrary spot", latitude: 35.6636111, longitude: 139.74130272, label: "An rbitrary spot" )
# spot320 = Spot.create!( address: "An arbitrary spot", latitude: 35.64732749, longitude: 139.74777456, label: "An rbitrary spot" )
# spot321 = Spot.create!( address: "An arbitrary spot", latitude: 35.64920449, longitude: 139.73684999, label: "An rbitrary spot" )
# spot322 = Spot.create!( address: "An arbitrary spot", latitude: 35.6517257, longitude: 139.74648958, label: "An rbitrary spot" )
# spot323 = Spot.create!( address: "An arbitrary spot", latitude: 35.65196677, longitude: 139.73437318, label: "An rbitrary spot" )
# spot324 = Spot.create!( address: "An arbitrary spot", latitude: 35.65551471, longitude: 139.73586136, label: "An rbitrary spot" )
# spot325 = Spot.create!( address: "An arbitrary spot", latitude: 35.65050293, longitude: 139.74515684, label: "An rbitrary spot" )
# spot326 = Spot.create!( address: "An arbitrary spot", latitude: 35.65919418, longitude: 139.71992704, label: "An rbitrary spot" )
# spot327 = Spot.create!( address: "An arbitrary spot", latitude: 35.65194148, longitude: 139.71855389, label: "An rbitrary spot" )
# spot328 = Spot.create!( address: "An arbitrary spot", latitude: 35.64821241, longitude: 139.73509054, label: "An rbitrary spot" )
# spot329 = Spot.create!( address: "An arbitrary spot", latitude: 35.65588755, longitude: 139.74203024, label: "An rbitrary spot" )
# spot330 = Spot.create!( address: "An arbitrary spot", latitude: 35.66098476, longitude: 139.72894591, label: "An rbitrary spot" )
# spot331 = Spot.create!( address: "An arbitrary spot", latitude: 35.65816541, longitude: 139.73259171, label: "An rbitrary spot" )
# spot332 = Spot.create!( address: "An arbitrary spot", latitude: 35.64165967, longitude: 139.74138163, label: "An rbitrary spot" )
# spot333 = Spot.create!( address: "An arbitrary spot", latitude: 35.65257179, longitude: 139.74140499, label: "An rbitrary spot" )
# spot334 = Spot.create!( address: "An arbitrary spot", latitude: 35.64588892, longitude: 139.74243694, label: "An rbitrary spot" )
# spot335 = Spot.create!( address: "An arbitrary spot", latitude: 35.65979544, longitude: 139.72382857, label: "An rbitrary spot" )
# spot336 = Spot.create!( address: "An arbitrary spot", latitude: 35.66214854, longitude: 139.73478744, label: "An rbitrary spot" )
# spot337 = Spot.create!( address: "An arbitrary spot", latitude: 35.66320217, longitude: 139.74031632, label: "An rbitrary spot" )
# spot338 = Spot.create!( address: "An arbitrary spot", latitude: 35.64483347, longitude: 139.72527113, label: "An rbitrary spot" )
# spot339 = Spot.create!( address: "An arbitrary spot", latitude: 35.64603602, longitude: 139.74755837, label: "An rbitrary spot" )
# spot340 = Spot.create!( address: "An arbitrary spot", latitude: 35.64531326, longitude: 139.71920809, label: "An rbitrary spot" )
# spot341 = Spot.create!( address: "An arbitrary spot", latitude: 35.65550805, longitude: 139.71806689, label: "An rbitrary spot" )
# spot342 = Spot.create!( address: "An arbitrary spot", latitude: 35.65564413, longitude: 139.72499693, label: "An rbitrary spot" )
# spot343 = Spot.create!( address: "An arbitrary spot", latitude: 35.66376897, longitude: 139.74064783, label: "An rbitrary spot" )
# spot344 = Spot.create!( address: "An arbitrary spot", latitude: 35.63708059, longitude: 139.73680532, label: "An rbitrary spot" )
# spot345 = Spot.create!( address: "An arbitrary spot", latitude: 35.66444844, longitude: 139.73645234, label: "An rbitrary spot" )
# spot346 = Spot.create!( address: "An arbitrary spot", latitude: 35.6556435, longitude: 139.73827447, label: "An rbitrary spot" )
# spot347 = Spot.create!( address: "An arbitrary spot", latitude: 35.64903356, longitude: 139.74890216, label: "An rbitrary spot" )
# spot348 = Spot.create!( address: "An arbitrary spot", latitude: 35.64742232, longitude: 139.74840425, label: "An rbitrary spot" )
# spot349 = Spot.create!( address: "An arbitrary spot", latitude: 35.6593562, longitude: 139.74150728, label: "An rbitrary spot" )
# spot350 = Spot.create!( address: "An arbitrary spot", latitude: 35.65617931, longitude: 139.74786208, label: "An rbitrary spot" )
# spot351 = Spot.create!( address: "An arbitrary spot", latitude: 35.65436555, longitude: 139.71945711, label: "An rbitrary spot" )
# spot352 = Spot.create!( address: "An arbitrary spot", latitude: 35.65302512, longitude: 139.73485448, label: "An rbitrary spot" )
# spot353 = Spot.create!( address: "An arbitrary spot", latitude: 35.64661338, longitude: 139.73147545, label: "An rbitrary spot" )
# spot354 = Spot.create!( address: "An arbitrary spot", latitude: 35.6443894, longitude: 139.74286672, label: "An rbitrary spot" )
# spot355 = Spot.create!( address: "An arbitrary spot", latitude: 35.6479898, longitude: 139.73890379, label: "An rbitrary spot" )
# spot356 = Spot.create!( address: "An arbitrary spot", latitude: 35.6623195, longitude: 139.72392589, label: "An rbitrary spot" )
# spot357 = Spot.create!( address: "An arbitrary spot", latitude: 35.66431353, longitude: 139.74048376, label: "An rbitrary spot" )
# spot358 = Spot.create!( address: "An arbitrary spot", latitude: 35.65897912, longitude: 139.73892847, label: "An rbitrary spot" )
# spot359 = Spot.create!( address: "An arbitrary spot", latitude: 35.65893444, longitude: 139.72763501, label: "An rbitrary spot" )
# spot360 = Spot.create!( address: "An arbitrary spot", latitude: 35.6461211, longitude: 139.7363773, label: "An rbitrary spot" )
# spot361 = Spot.create!( address: "An arbitrary spot", latitude: 35.65002771, longitude: 139.73835531, label: "An rbitrary spot" )
# spot362 = Spot.create!( address: "An arbitrary spot", latitude: 35.66263574, longitude: 139.72848883, label: "An rbitrary spot" )
# spot363 = Spot.create!( address: "An arbitrary spot", latitude: 35.64113471, longitude: 139.7254581, label: "An rbitrary spot" )
# spot364 = Spot.create!( address: "An arbitrary spot", latitude: 35.65568575, longitude: 139.74592025, label: "An rbitrary spot" )
# spot365 = Spot.create!( address: "An arbitrary spot", latitude: 35.65102025, longitude: 139.73708778, label: "An rbitrary spot" )
# spot366 = Spot.create!( address: "An arbitrary spot", latitude: 35.64405299, longitude: 139.7373262, label: "An rbitrary spot" )
# spot367 = Spot.create!( address: "An arbitrary spot", latitude: 35.66153615, longitude: 139.74205101, label: "An rbitrary spot" )
# spot368 = Spot.create!( address: "An arbitrary spot", latitude: 35.65642486, longitude: 139.72011427, label: "An rbitrary spot" )
# spot369 = Spot.create!( address: "An arbitrary spot", latitude: 35.6408377, longitude: 139.74624851, label: "An rbitrary spot" )
# spot370 = Spot.create!( address: "An arbitrary spot", latitude: 35.65762715, longitude: 139.72933929, label: "An rbitrary spot" )
# spot371 = Spot.create!( address: "An arbitrary spot", latitude: 35.65937784, longitude: 139.73401777, label: "An rbitrary spot" )
# spot372 = Spot.create!( address: "An arbitrary spot", latitude: 35.64661841, longitude: 139.73171029, label: "An rbitrary spot" )
# spot373 = Spot.create!( address: "An arbitrary spot", latitude: 35.66187319, longitude: 139.73771063, label: "An rbitrary spot" )
# spot374 = Spot.create!( address: "An arbitrary spot", latitude: 35.6537829, longitude: 139.73179207, label: "An rbitrary spot" )
# spot375 = Spot.create!( address: "An arbitrary spot", latitude: 35.66113844, longitude: 139.74117613, label: "An rbitrary spot" )
# spot376 = Spot.create!( address: "An arbitrary spot", latitude: 35.64223568, longitude: 139.73947732, label: "An rbitrary spot" )
# spot377 = Spot.create!( address: "An arbitrary spot", latitude: 35.65034208, longitude: 139.74578336, label: "An rbitrary spot" )
# spot378 = Spot.create!( address: "An arbitrary spot", latitude: 35.65084339, longitude: 139.71981394, label: "An rbitrary spot" )
# spot379 = Spot.create!( address: "An arbitrary spot", latitude: 35.65194873, longitude: 139.73229747, label: "An rbitrary spot" )
# spot380 = Spot.create!( address: "An arbitrary spot", latitude: 35.63789688, longitude: 139.72804838, label: "An rbitrary spot" )
# spot381 = Spot.create!( address: "An arbitrary spot", latitude: 35.65869018, longitude: 139.74244711, label: "An rbitrary spot" )
# spot382 = Spot.create!( address: "An arbitrary spot", latitude: 35.66004991, longitude: 139.74521137, label: "An rbitrary spot" )
# spot383 = Spot.create!( address: "An arbitrary spot", latitude: 35.64009037, longitude: 139.73874952, label: "An rbitrary spot" )
# spot384 = Spot.create!( address: "An arbitrary spot", latitude: 35.64664195, longitude: 139.73651275, label: "An rbitrary spot" )
# spot385 = Spot.create!( address: "An arbitrary spot", latitude: 35.6518794, longitude: 139.72831111, label: "An rbitrary spot" )
# spot386 = Spot.create!( address: "An arbitrary spot", latitude: 35.65918206, longitude: 139.73789968, label: "An rbitrary spot" )
# spot387 = Spot.create!( address: "An arbitrary spot", latitude: 35.65431373, longitude: 139.73876703, label: "An rbitrary spot" )
# spot388 = Spot.create!( address: "An arbitrary spot", latitude: 35.65903712, longitude: 139.72222568, label: "An rbitrary spot" )
# spot389 = Spot.create!( address: "An arbitrary spot", latitude: 35.65124871, longitude: 139.7281531, label: "An rbitrary spot" )
# spot390 = Spot.create!( address: "An arbitrary spot", latitude: 35.66238498, longitude: 139.72842043, label: "An rbitrary spot" )
# spot391 = Spot.create!( address: "An arbitrary spot", latitude: 35.64882377, longitude: 139.72231173, label: "An rbitrary spot" )
# spot392 = Spot.create!( address: "An arbitrary spot", latitude: 35.65112413, longitude: 139.74896728, label: "An rbitrary spot" )
# spot393 = Spot.create!( address: "An arbitrary spot", latitude: 35.6440375, longitude: 139.72677111, label: "An rbitrary spot" )
# spot394 = Spot.create!( address: "An arbitrary spot", latitude: 35.65693136, longitude: 139.73464554, label: "An rbitrary spot" )
# spot395 = Spot.create!( address: "An arbitrary spot", latitude: 35.64306421, longitude: 139.74507362, label: "An rbitrary spot" )
# spot396 = Spot.create!( address: "An arbitrary spot", latitude: 35.64748248, longitude: 139.71773352, label: "An rbitrary spot" )
# spot397 = Spot.create!( address: "An arbitrary spot", latitude: 35.65515114, longitude: 139.73373085, label: "An rbitrary spot" )
# spot398 = Spot.create!( address: "An arbitrary spot", latitude: 35.63924346, longitude: 139.73376473, label: "An rbitrary spot" )
# spot399 = Spot.create!( address: "An arbitrary spot", latitude: 35.65580263, longitude: 139.72408708, label: "An rbitrary spot" )
# spot400 = Spot.create!( address: "An arbitrary spot", latitude: 35.6509933, longitude: 139.71803024, label: "An rbitrary spot" )
# spot401 = Spot.create!( address: "An arbitrary spot", latitude: 35.63756397, longitude: 139.73780401, label: "An rbitrary spot" )
# spot402 = Spot.create!( address: "An arbitrary spot", latitude: 35.64690037, longitude: 139.74413752, label: "An rbitrary spot" )
# spot403 = Spot.create!( address: "An arbitrary spot", latitude: 35.63926504, longitude: 139.73023942, label: "An rbitrary spot" )
# spot404 = Spot.create!( address: "An arbitrary spot", latitude: 35.65041647, longitude: 139.74861783, label: "An rbitrary spot" )
# spot405 = Spot.create!( address: "An arbitrary spot", latitude: 35.65112674, longitude: 139.74556934, label: "An rbitrary spot" )
# spot406 = Spot.create!( address: "An arbitrary spot", latitude: 35.64200256, longitude: 139.73387576, label: "An rbitrary spot" )
# spot407 = Spot.create!( address: "An arbitrary spot", latitude: 35.64935269, longitude: 139.73677335, label: "An rbitrary spot" )
# spot408 = Spot.create!( address: "An arbitrary spot", latitude: 35.65332576, longitude: 139.75139144, label: "An rbitrary spot" )
# spot409 = Spot.create!( address: "An arbitrary spot", latitude: 35.6566363, longitude: 139.73693661, label: "An rbitrary spot" )
# spot410 = Spot.create!( address: "An arbitrary spot", latitude: 35.66371865, longitude: 139.73169602, label: "An rbitrary spot" )
# spot411 = Spot.create!( address: "An arbitrary spot", latitude: 35.63964503, longitude: 139.74066167, label: "An rbitrary spot" )
# spot412 = Spot.create!( address: "An arbitrary spot", latitude: 35.65358374, longitude: 139.72231846, label: "An rbitrary spot" )
# spot413 = Spot.create!( address: "An arbitrary spot", latitude: 35.64789184, longitude: 139.72659772, label: "An rbitrary spot" )
# spot414 = Spot.create!( address: "An arbitrary spot", latitude: 35.63759421, longitude: 139.73946349, label: "An rbitrary spot" )
# spot415 = Spot.create!( address: "An arbitrary spot", latitude: 35.64735162, longitude: 139.74656239, label: "An rbitrary spot" )
# spot416 = Spot.create!( address: "An arbitrary spot", latitude: 35.64389758, longitude: 139.72372222, label: "An rbitrary spot" )
# spot417 = Spot.create!( address: "An arbitrary spot", latitude: 35.65753436, longitude: 139.74510017, label: "An rbitrary spot" )
# spot418 = Spot.create!( address: "An arbitrary spot", latitude: 35.64673187, longitude: 139.73870793, label: "An rbitrary spot" )
# spot419 = Spot.create!( address: "An arbitrary spot", latitude: 35.66021344, longitude: 139.74614336, label: "An rbitrary spot" )
# spot420 = Spot.create!( address: "An arbitrary spot", latitude: 35.63680899, longitude: 139.73191301, label: "An rbitrary spot" )
# spot421 = Spot.create!( address: "An arbitrary spot", latitude: 35.65171499, longitude: 139.74578784, label: "An rbitrary spot" )
# spot422 = Spot.create!( address: "An arbitrary spot", latitude: 35.64418946, longitude: 139.72442638, label: "An rbitrary spot" )
# spot423 = Spot.create!( address: "An arbitrary spot", latitude: 35.64180925, longitude: 139.74691907, label: "An rbitrary spot" )
# spot424 = Spot.create!( address: "An arbitrary spot", latitude: 35.64174671, longitude: 139.74465616, label: "An rbitrary spot" )
# spot425 = Spot.create!( address: "An arbitrary spot", latitude: 35.65774586, longitude: 139.74946722, label: "An rbitrary spot" )
# spot426 = Spot.create!( address: "An arbitrary spot", latitude: 35.65024025, longitude: 139.71710121, label: "An rbitrary spot" )
# spot427 = Spot.create!( address: "An arbitrary spot", latitude: 35.637342, longitude: 139.73440316, label: "An rbitrary spot" )
# spot428 = Spot.create!( address: "An arbitrary spot", latitude: 35.65641066, longitude: 139.7454133, label: "An rbitrary spot" )
# spot429 = Spot.create!( address: "An arbitrary spot", latitude: 35.65234202, longitude: 139.71609459, label: "An rbitrary spot" )
# spot430 = Spot.create!( address: "An arbitrary spot", latitude: 35.64694177, longitude: 139.72464501, label: "An rbitrary spot" )
# spot431 = Spot.create!( address: "An arbitrary spot", latitude: 35.64501038, longitude: 139.72318934, label: "An rbitrary spot" )
# spot432 = Spot.create!( address: "An arbitrary spot", latitude: 35.64732746, longitude: 139.73828631, label: "An rbitrary spot" )
# spot433 = Spot.create!( address: "An arbitrary spot", latitude: 35.65117979, longitude: 139.74800957, label: "An rbitrary spot" )
# spot434 = Spot.create!( address: "An arbitrary spot", latitude: 35.65825583, longitude: 139.74537323, label: "An rbitrary spot" )
# spot435 = Spot.create!( address: "An arbitrary spot", latitude: 35.65822153, longitude: 139.74311862, label: "An rbitrary spot" )
# spot436 = Spot.create!( address: "An arbitrary spot", latitude: 35.65428718, longitude: 139.74355737, label: "An rbitrary spot" )
# spot437 = Spot.create!( address: "An arbitrary spot", latitude: 35.64083408, longitude: 139.73876534, label: "An rbitrary spot" )
# spot438 = Spot.create!( address: "An arbitrary spot", latitude: 35.65851374, longitude: 139.73434092, label: "An rbitrary spot" )
# spot439 = Spot.create!( address: "An arbitrary spot", latitude: 35.63894342, longitude: 139.73480094, label: "An rbitrary spot" )
# spot440 = Spot.create!( address: "An arbitrary spot", latitude: 35.64634119, longitude: 139.72938142, label: "An rbitrary spot" )
# spot441 = Spot.create!( address: "An arbitrary spot", latitude: 35.65455422, longitude: 139.739395, label: "An rbitrary spot" )
# spot442 = Spot.create!( address: "An arbitrary spot", latitude: 35.63895514, longitude: 139.73235237, label: "An rbitrary spot" )
# spot443 = Spot.create!( address: "An arbitrary spot", latitude: 35.65525771, longitude: 139.73052992, label: "An rbitrary spot" )
# spot444 = Spot.create!( address: "An arbitrary spot", latitude: 35.64377863, longitude: 139.72098093, label: "An rbitrary spot" )
# spot445 = Spot.create!( address: "An arbitrary spot", latitude: 35.64920759, longitude: 139.72263612, label: "An rbitrary spot" )
# spot446 = Spot.create!( address: "An arbitrary spot", latitude: 35.64106186, longitude: 139.7217396, label: "An rbitrary spot" )
# spot447 = Spot.create!( address: "An arbitrary spot", latitude: 35.64973036, longitude: 139.71742629, label: "An rbitrary spot" )
# spot448 = Spot.create!( address: "An arbitrary spot", latitude: 35.65551019, longitude: 139.72108344, label: "An rbitrary spot" )
# spot449 = Spot.create!( address: "An arbitrary spot", latitude: 35.64667195, longitude: 139.73141521, label: "An rbitrary spot" )
# spot450 = Spot.create!( address: "An arbitrary spot", latitude: 35.65145196, longitude: 139.74115416, label: "An rbitrary spot" )
# spot451 = Spot.create!( address: "An arbitrary spot", latitude: 35.64692902, longitude: 139.73756566, label: "An rbitrary spot" )
# spot452 = Spot.create!( address: "An arbitrary spot", latitude: 35.66404844, longitude: 139.72575944, label: "An rbitrary spot" )
# spot453 = Spot.create!( address: "An arbitrary spot", latitude: 35.65512791, longitude: 139.7427376, label: "An rbitrary spot" )
# spot454 = Spot.create!( address: "An arbitrary spot", latitude: 35.64636132, longitude: 139.71831394, label: "An rbitrary spot" )
# spot455 = Spot.create!( address: "An arbitrary spot", latitude: 35.64422413, longitude: 139.72634861, label: "An rbitrary spot" )
# spot456 = Spot.create!( address: "An arbitrary spot", latitude: 35.64626377, longitude: 139.74012221, label: "An rbitrary spot" )
# spot457 = Spot.create!( address: "An arbitrary spot", latitude: 35.64676245, longitude: 139.74745718, label: "An rbitrary spot" )
# spot458 = Spot.create!( address: "An arbitrary spot", latitude: 35.65477854, longitude: 139.746931, label: "An rbitrary spot" )
# spot459 = Spot.create!( address: "An arbitrary spot", latitude: 35.64771746, longitude: 139.71961398, label: "An rbitrary spot" )
# spot460 = Spot.create!( address: "An arbitrary spot", latitude: 35.64454251, longitude: 139.72305037, label: "An rbitrary spot" )
# spot461 = Spot.create!( address: "An arbitrary spot", latitude: 35.64572693, longitude: 139.74331761, label: "An rbitrary spot" )
# spot462 = Spot.create!( address: "An arbitrary spot", latitude: 35.65178427, longitude: 139.73169572, label: "An rbitrary spot" )
# spot463 = Spot.create!( address: "An arbitrary spot", latitude: 35.64143951, longitude: 139.73023572, label: "An rbitrary spot" )
# spot464 = Spot.create!( address: "An arbitrary spot", latitude: 35.64651427, longitude: 139.72251472, label: "An rbitrary spot" )
# spot465 = Spot.create!( address: "An arbitrary spot", latitude: 35.64598024, longitude: 139.73432748, label: "An rbitrary spot" )
# spot466 = Spot.create!( address: "An arbitrary spot", latitude: 35.66300041, longitude: 139.73568335, label: "An rbitrary spot" )
# spot467 = Spot.create!( address: "An arbitrary spot", latitude: 35.65876633, longitude: 139.74461421, label: "An rbitrary spot" )
# spot468 = Spot.create!( address: "An arbitrary spot", latitude: 35.65023146, longitude: 139.72356527, label: "An rbitrary spot" )
# spot469 = Spot.create!( address: "An arbitrary spot", latitude: 35.65743486, longitude: 139.73861267, label: "An rbitrary spot" )
# spot470 = Spot.create!( address: "An arbitrary spot", latitude: 35.65751711, longitude: 139.7400876, label: "An rbitrary spot" )
# spot471 = Spot.create!( address: "An arbitrary spot", latitude: 35.65138601, longitude: 139.73894241, label: "An rbitrary spot" )
# spot472 = Spot.create!( address: "An arbitrary spot", latitude: 35.64028407, longitude: 139.72257402, label: "An rbitrary spot" )
# spot473 = Spot.create!( address: "An arbitrary spot", latitude: 35.64551256, longitude: 139.72932233, label: "An rbitrary spot" )
# spot474 = Spot.create!( address: "An arbitrary spot", latitude: 35.660283, longitude: 139.72729863, label: "An rbitrary spot" )
# spot475 = Spot.create!( address: "An arbitrary spot", latitude: 35.65657321, longitude: 139.72726392, label: "An rbitrary spot" )
# spot476 = Spot.create!( address: "An arbitrary spot", latitude: 35.65231706, longitude: 139.73105412, label: "An rbitrary spot" )
# spot477 = Spot.create!( address: "An arbitrary spot", latitude: 35.63856431, longitude: 139.74087537, label: "An rbitrary spot" )
# spot478 = Spot.create!( address: "An arbitrary spot", latitude: 35.65676531, longitude: 139.72637496, label: "An rbitrary spot" )
# spot479 = Spot.create!( address: "An arbitrary spot", latitude: 35.64860715, longitude: 139.72666039, label: "An rbitrary spot" )
# spot480 = Spot.create!( address: "An arbitrary spot", latitude: 35.63865182, longitude: 139.73635824, label: "An rbitrary spot" )
# spot481 = Spot.create!( address: "An arbitrary spot", latitude: 35.64823336, longitude: 139.72519169, label: "An rbitrary spot" )
# spot482 = Spot.create!( address: "An arbitrary spot", latitude: 35.65144729, longitude: 139.74921503, label: "An rbitrary spot" )
# spot483 = Spot.create!( address: "An arbitrary spot", latitude: 35.64033345, longitude: 139.73377973, label: "An rbitrary spot" )
# spot484 = Spot.create!( address: "An arbitrary spot", latitude: 35.64264692, longitude: 139.72741304, label: "An rbitrary spot" )
# spot485 = Spot.create!( address: "An arbitrary spot", latitude: 35.64155541, longitude: 139.7302285, label: "An rbitrary spot" )
# spot486 = Spot.create!( address: "An arbitrary spot", latitude: 35.65899803, longitude: 139.74414011, label: "An rbitrary spot" )
# spot487 = Spot.create!( address: "An arbitrary spot", latitude: 35.65121727, longitude: 139.73495089, label: "An rbitrary spot" )
# spot488 = Spot.create!( address: "An arbitrary spot", latitude: 35.64406495, longitude: 139.74868286, label: "An rbitrary spot" )
# spot489 = Spot.create!( address: "An arbitrary spot", latitude: 35.64280948, longitude: 139.73451143, label: "An rbitrary spot" )
# spot490 = Spot.create!( address: "An arbitrary spot", latitude: 35.64130433, longitude: 139.73427631, label: "An rbitrary spot" )
# spot491 = Spot.create!( address: "An arbitrary spot", latitude: 35.6616249, longitude: 139.73456564, label: "An rbitrary spot" )
# spot492 = Spot.create!( address: "An arbitrary spot", latitude: 35.64562552, longitude: 139.72474388, label: "An rbitrary spot" )
# spot493 = Spot.create!( address: "An arbitrary spot", latitude: 35.6512794, longitude: 139.74216074, label: "An rbitrary spot" )
# spot494 = Spot.create!( address: "An arbitrary spot", latitude: 35.64615478, longitude: 139.73662609, label: "An rbitrary spot" )
# spot495 = Spot.create!( address: "An arbitrary spot", latitude: 35.65647874, longitude: 139.72904951, label: "An rbitrary spot" )
# spot496 = Spot.create!( address: "An arbitrary spot", latitude: 35.64705236, longitude: 139.74250263, label: "An rbitrary spot" )
# spot497 = Spot.create!( address: "An arbitrary spot", latitude: 35.6432735, longitude: 139.72733705, label: "An rbitrary spot" )
# spot498 = Spot.create!( address: "An arbitrary spot", latitude: 35.64413288, longitude: 139.71906407, label: "An rbitrary spot" )
# spot499 = Spot.create!( address: "An arbitrary spot", latitude: 35.639309, longitude: 139.72980051, label: "An rbitrary spot" )
# spot500 = Spot.create!( address: "An arbitrary spot", latitude: 35.65967655, longitude: 139.72170651, label: "An rbitrary spot" )
# spot501 = Spot.create!( address: "An arbitrary spot", latitude: 35.63766032, longitude: 139.73707157, label: "An rbitrary spot" )
# spot502 = Spot.create!( address: "An arbitrary spot", latitude: 35.63998976, longitude: 139.72701738, label: "An rbitrary spot" )
# spot503 = Spot.create!( address: "An arbitrary spot", latitude: 35.64430335, longitude: 139.71897613, label: "An rbitrary spot" )
# spot504 = Spot.create!( address: "An arbitrary spot", latitude: 35.65184333, longitude: 139.7471368, label: "An rbitrary spot" )
# spot505 = Spot.create!( address: "An arbitrary spot", latitude: 35.66420207, longitude: 139.73054835, label: "An rbitrary spot" )
# spot506 = Spot.create!( address: "An arbitrary spot", latitude: 35.66290849, longitude: 139.72385475, label: "An rbitrary spot" )
# spot507 = Spot.create!( address: "An arbitrary spot", latitude: 35.6632504, longitude: 139.73638284, label: "An rbitrary spot" )
# spot508 = Spot.create!( address: "An arbitrary spot", latitude: 35.65664036, longitude: 139.74601658, label: "An rbitrary spot" )
# spot509 = Spot.create!( address: "An arbitrary spot", latitude: 35.64581032, longitude: 139.74088225, label: "An rbitrary spot" )
# spot510 = Spot.create!( address: "An arbitrary spot", latitude: 35.66041331, longitude: 139.73825315, label: "An rbitrary spot" )




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

user4 = User.create!(
  email: "oscar@email.com",
  password: "444444",
  name: "Oscar",
  line_id: "oscar",
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
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
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
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time: Time.parse("08:00"))

# Setting the same schedule for spot2
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot2.id, scheduled_time: Time.parse("08:00"))

# Setting the same schedule for spot3
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot3.id, scheduled_time: Time.parse("08:00"))


# Setting the same schedule for spot4
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot4.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot5
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot5.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot6
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot6.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot7
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot7.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot8
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot8.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot9
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot9.id, scheduled_time: Time.parse("08:00"))



# Setting the same schedule for spot10
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,1,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,4,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,8,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,11,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,15,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,18,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,22,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,25,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,29,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,1,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,5,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,8,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,12,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,15,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,19,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,22,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,26,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,29,8,0,0), collection_type: 'C', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,6,8,0,0), collection_type: 'GCM', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,20,8,0,0), collection_type: 'GCM', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,3,8,0,0), collection_type: 'GCM', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,17,8,0,0), collection_type: 'GCM', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,7,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,14,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,21,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,28,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,4,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,11,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,18,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,25,8,0,0), collection_type: 'RP', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,3,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,10,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,17,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,24,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,5,31,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,7,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date:Time.new(2024,6,14,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,21,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))
@spot_schedule = SpotDate.create!(date: Time.new(2024,6,28,8,0,0), collection_type: 'UPBBC', spot_id: spot10.id, scheduled_time: Time.parse("08:00"))



# # Seeding weekly pickup schedule for RP (RECYCLABLE PLASTICS - Mondays) from 4/1/2024 t0 3/31/2025
# @fiscal_year_calendar_start = Time.new(2024,4,1,8,0,0)
# @weekly = 60 * 60 * 24 * 7
# @biweekly = 60 * 60 * 24 * 14

# 52.times do (
#   @spot_schedule = SpotDate.create!(date: @fiscal_year_calendar_start, collection_type: 'RP', spot_id: spot1.id, scheduled_time:  '8:00')
#   @fiscal_year_calendar_start += @weekly
#   # puts @fiscal_year_calendar_start
# )
# end

# # Seeding weekly pickup schedule for C (COMBUSTIBLES - Tuesdays) from 4/2/2024 t0 3/31/2025 - 1st pickup
# @fiscal_year_calendar_start = Time.new(2024,4,2,8,0,0)
# 51.times do (
#   @spot_schedule = SpotDate.create!(date: @fiscal_year_calendar_start, collection_type: 'C', spot_id: spot1.id, scheduled_time:  '8:00')
#   @fiscal_year_calendar_start += @weekly
#   puts @fiscal_year_calendar_start
# )
# end

# # Seeding weekly pickup schedule for C (COMBUSTIBLES - Fridays) from 4/5/2024 t0 3/31/2025 - end pickup
# @fiscal_year_calendar_start = Time.new(2024,4,5,8,0,0)
# 51.times do (
#   @spot_schedule = SpotDate.create!(date: @fiscal_year_calendar_start, collection_type: 'C', spot_id: spot1.id, scheduled_time:  '8:00')
#   @fiscal_year_calendar_start += @weekly
#   # puts @fiscal_year_calendar_start
# )
# end

# # Seeding weekly pickup schedule for UPBBC (USED PAPER, PLASTIC BOTTLES, BOTTLES, CANS - Thursdays) from 4/4/2024 t0 3/31/2025
# @fiscal_year_calendar_start = Time.new(2024,4,4,8,0,0)
# 51.times do (
#   @spot_schedule = SpotDate.create!(date: @fiscal_year_calendar_start, collection_type: 'UPBBC', spot_id: spot1.id, scheduled_time:  '8:00')
#   @fiscal_year_calendar_start += @weekly
#   # puts @fiscal_year_calendar_start
# )
# end


# # Seeding biweekly pickup schedule for GCM (GLASS, CERAMIC AND METALLIC - Saturdays) from 4/13/2024 t0 3/31/2025
# @fiscal_year_calendar_start = Time.new(2024,4,13,8,0,0)
# 25.times do (
#   @spot_schedule = SpotDate.create!(date: @fiscal_year_calendar_start, collection_type: 'GCM', spot_id: spot1.id, scheduled_time:  '8:00')
#   @fiscal_year_calendar_start += @biweekly
#   # puts @fiscal_year_calendar_start
# )
# end



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


puts "=========="
puts "Seeded with #{Spot.count} spots, #{User.count} users, #{SpotDate.count} pickup details, #{Alert.count} alerts,  #{SpotVisit.count} reported visits."

# This is junk comment to differentiate the file from a previous push
