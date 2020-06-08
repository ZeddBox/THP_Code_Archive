# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all

10.times do
  Place.create(
    city: Faker::Address.city
  )
end

33.times do
  Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    zip_code: Faker::Address.zip_code
    # place_id: Place.find(rand(Place.first.id..Place.last.id)).id
  )
end

65.times do
  Patient.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name
    # place_id: Place.find(rand(Place.first.id..Place.last.id)).id
  )
end

60.times do
  Appointment.create(
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 50),
    doctor_id: Doctor.find(rand(Doctor.first.id..Doctor.last.id)).id, 
    patient_id: Patient.find(rand(Patient.first.id..Patient.last.id)).id
    # place_id: Place.find(rand(Place.first.id..Place.last.id)).id
  )
end

  Specialty.create(name:"Gynécologue")
  Specialty.create(name:"Médecin Généraliste")
  Specialty.create(name:"Sage-Femme")
  Specialty.create(name:"Radiologue")
  Specialty.create(name:"Kiné")
  Specialty.create(name:"Osthéopathe")
  Specialty.create(name:"Psychologue")
  Specialty.create(name:"Hypnotiseur")

45.times do
  JoinTableDoctorSpecialty.create(
    doctor_id: Doctor.find(rand(Doctor.first.id..Doctor.last.id)).id, 
    specialtiy_id: Specialty.find(rand(Specialty.first.id..Specialty.last.id)).id
  )
end



