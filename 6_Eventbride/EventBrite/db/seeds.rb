# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

  User.create(
  email: "zed14@yopmail.com", 
  password: "123456",
  password_confirmation: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: Faker::GreekPhilosophers.quote
  )

  User.create(
  email: "zed13@yopmail.com", 
  password: "123456",
  password_confirmation: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: Faker::GreekPhilosophers.quote
    )

8.times do 
  Event.create(
  start_date: Faker::Date.forward(days: 30),
  duration: [10,20,30,40,50,60].sample,
  title: ["Apero","Convention","Table ronde","Débat","Vide Grenier","Concert"].sample + " " + Faker::Educator.university,
  description: Faker::TvShows::Kaamelott.quote,
  price: [10,20,30,40,50,60].sample,
  location: Faker::Address.city,
  admin_id: rand(User.first.id..User.last.id),
  picture: Pexels::Photo.random.source
)
end

i = Event.last.id - Event.first.id + 1
j = Event.first.id

i.times do 
  Attendance.create(
  stripe_customer_id: Faker::Bank.account_number(digits: 8),
  user_id: Event.find(j).admin_id,
  event_id: j
)
j += 1
end