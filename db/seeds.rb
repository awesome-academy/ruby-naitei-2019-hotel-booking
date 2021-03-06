# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Quan",
             email: "le.anh.quan@sun-asterisk.com",
             password: "123456",
             password_confirmation: "123456",
             role: 1).skip_confirmation!

User.create!(name: "Quan la",
            email: "quantl12113@gmail.com",
            password: "123456",
            password_confirmation: "123456",
            role: 2).skip_confirmation!
20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "123456"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password).skip_confirmation!
end
