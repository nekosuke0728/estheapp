class SkinTroubleType < ApplicationRecord
  has_many :user_trouble_types, dependent: :destroy
  has_many :product_trouble_types, dependent: :destroy

  validates :name, presence: true
end
