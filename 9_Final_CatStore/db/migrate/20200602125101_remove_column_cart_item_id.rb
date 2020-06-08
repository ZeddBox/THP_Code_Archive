class RemoveColumnCartItemId < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :item_id
  end
end
