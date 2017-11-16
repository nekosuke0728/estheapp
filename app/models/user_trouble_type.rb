class UserTroubleType < ApplicationRecord
  belongs_to :user
  belongs_to :skin_trouble_type
end
