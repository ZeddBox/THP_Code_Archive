class Order < ApplicationRecord
  after_create :order_send

  has_many :join_table_order_items
  has_many :items, through: :join_table_order_items

  belongs_to :user

  def order_send
    UserMailer.order_email(self).deliver_now
    AdminMailer.order_email(self).deliver_now
  end

  def total
    total = 0
    self.items.each do |item|
      total += item.price
    end
    return total
  end

  def self.total_commande
    total = 0
    Order.all.each do |order|
      total += order.total 
    end
    return total
  end
  
end


