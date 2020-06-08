class RemoveDoctorsColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :doctors, :speciality, :string
  end
end
