class AddReadEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :read, :boolean
  end
end
