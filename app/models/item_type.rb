class ItemType < ApplicationRecord
  belongs_to :category
  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :category_id, presence: true

  after_validation :remove_unnecessary_error_messages

  def remove_unnecessary_error_messages
    errors.messages.delete(:category_id)
  end

end
