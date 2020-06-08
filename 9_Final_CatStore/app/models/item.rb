class Item < ApplicationRecord
  # validates :title, presence: true
  # validates :description, length: { maximum: 500, minimum: 25, 
  #   too_long: "Il faut 500 caractères maximum" }
  # validates :image_url, presence: true
  # validates :race, presence: true
  # validates :price, presence: true, format: { with: /\A\d+(?:.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

  has_many :carts
  has_many :users, through: :carts
  has_many :comments

  has_many :join_table_order_items
  has_many :orders, through: :join_table_order_items
end
