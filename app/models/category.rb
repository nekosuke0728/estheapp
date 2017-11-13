class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :item_types, dependent: :destroy
end
