class Category < ApplicationRecord
  # has_many :products, dependent: :destroy
  has_many :item_types, dependent: :destroy
  has_many :products, through: :item_types

  validates :name, presence: true
end
