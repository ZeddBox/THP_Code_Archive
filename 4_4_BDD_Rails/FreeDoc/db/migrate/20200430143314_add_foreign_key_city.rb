class AddForeignKeyCity < ActiveRecord::Migration[6.0]
  def change
    remove_column :doctors, :city_id, :integer
    remove_column :appointments, :city_id, :integer
    remove_column :patients, :city_id, :integer
    # add_foreign_key :doctors, :city
    # add_foreign_key :appointments, :city
    # add_foreign_key :patients, :city
  end
end
