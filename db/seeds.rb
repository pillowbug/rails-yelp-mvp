require 'faker'

category = %w(chinese italian japanese french belgian)

puts 'Puttin dat seed in there'
10.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: category.sample
  )
  new_restaurant.save
end

puts 'hella full of seeds now'
