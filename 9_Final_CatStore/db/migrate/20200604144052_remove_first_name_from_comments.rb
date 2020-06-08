class RemoveFirstNameFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :first_name, :string
  end
end
