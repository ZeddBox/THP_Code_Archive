class Cart < ApplicationRecord
  has_one :user
  has_many :join_table_cart_items
  has_many :items, through: :join_table_cart_items

  def total
    total = 0
    self.items.each do |item|
      total += item.price
    end
    return total
  end

end
