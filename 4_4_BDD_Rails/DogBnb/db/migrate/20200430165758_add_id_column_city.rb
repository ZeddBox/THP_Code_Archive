class AddIdColumnCity < ActiveRecord::Migration[6.0]
  def change
    change_column :Cities, :id, :primary_key
  end
end
