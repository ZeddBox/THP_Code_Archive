# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTableGossipTag.destroy_all

10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end
City.create(name: "Bordeaux", zip_code: "33000")
  
15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Games::WorldOfWarcraft.quote,
    email: Faker::Internet.email,
    age: rand(18..90),
    city_id: City.find(rand(City.first.id..City.last.id)).id
  )
end
User.create(first_name:"Julien",last_name:"Anceau",description:"J'aime les Ewoks et l'Inspector Spacetime",email:"jul33anc@gmail.com",age:"28",city_id: City.find_by(name:"Bordeaux").id)

33.times do
  Gossip.create(
    title: Faker::Book.title,
    content: Faker::TvShows::Community.quotes,
    user_id: User.find(rand(User.first.id..User.last.id)).id
  )
  end

25.times do
  Tag.create(title: "#" + Faker::Verb.base)
end  

50.times do
  JoinTableGossipTag.create(
    tag_id: Tag.find(rand(Tag.first.id..Tag.last.id)).id,
    gossip_id: Gossip.find(rand(Gossip.first.id..Gossip.last.id)).id
  )
end