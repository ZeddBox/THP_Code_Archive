class DeleteDoctorIndexFromSpecialty < ActiveRecord::Migration[6.0]
  def change
    remove_column :specialties, :doctor_id, :string
    
    
  end
end
