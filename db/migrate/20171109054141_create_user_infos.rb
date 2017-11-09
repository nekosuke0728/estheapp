class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :phone
      t.date :birthday
      t.string :zipcode
      t.integer :prefecture_id
      t.string :address

      t.timestamps
    end
  end
end
