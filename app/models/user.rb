class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:login]

  attr_accessor :login

  has_one :user_info, dependent: :destroy
  has_one :reservation

  VALID_MEMBERSHIP_NUMBER_REGEX =  /\A\d{8}\z/
  validates :membership_number, format: { with: VALID_MEMBERSHIP_NUMBER_REGEX }

  def email_required?
    false
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["membership_number = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
  
end