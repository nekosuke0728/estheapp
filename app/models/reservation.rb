class Reservation < ApplicationRecord
  belongs_to :staff
  belongs_to :esthe_menu

end