class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :item_type
  has_one :stock, dependent: :destroy
  has_many :cart_products
  has_many :order_products
end
