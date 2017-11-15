class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  has_many :products
end
