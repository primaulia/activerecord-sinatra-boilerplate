require 'faker'

puts "create restaurants"

10.times do
  Restaurant.create( # new + save
    name: Faker::Movies::HarryPotter.character,
    address: Faker::Movies::HarryPotter.location
  )
end