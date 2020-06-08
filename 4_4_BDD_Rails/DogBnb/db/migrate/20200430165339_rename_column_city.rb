class RenameColumnCity < ActiveRecord::Migration[6.0]
  def change
    remove_column :Cities, :name, :string
    add_column :Cities, :city_name, :string
  end
end
