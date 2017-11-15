class UserInfo < ApplicationRecord

  belongs_to :user

  include JpPrefecture
  jp_prefecture :prefecture_id

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_id).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_id = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
