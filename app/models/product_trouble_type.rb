class ProductTroubleType < ApplicationRecord
  belongs_to :product
  belongs_to :skin_trouble_type
end
