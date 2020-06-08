class AddColumnStripeId < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :stripe_customer_id, :string
  end
end
