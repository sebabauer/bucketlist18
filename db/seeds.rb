# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
12.times do |t|
  Task.create(
    name: Faker::Beer.name,
    picture: "http://lorempixel.com/400/200/food/#{t+1}/",
    description: Faker::Beer.style

  )
end
