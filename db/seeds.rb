require 'faker'

puts 'Cleaning database...'
Meal.destroy_all
User.destroy_all

puts 'Creating user and meals...'
15.times do
  user = User.new(
    email: Faker::Internet.free_email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    password: "topsecret",
    password_confirmation: "topsecret"
  )
  user.save!
  meal = Meal.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    vegetarian: [true, false].sample,
    category: Faker::Food.ethnic_category,
    price_per_person: rand(5..15),
    max_person: rand(1..8),
    user: user
  )
  meal.save!
end
puts 'Finished!'
