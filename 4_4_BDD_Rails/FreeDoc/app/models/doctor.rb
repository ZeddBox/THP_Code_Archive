class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :join_table_doctor_specialties
  has_many :specialties, through: :join_table_doctor_specialties
  has_one :city
end
