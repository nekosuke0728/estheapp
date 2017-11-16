class CreateUserTroubleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_trouble_types do |t|
      t.references :user, foreign_key: true
      t.references :skin_trouble_type, foreign_key: true

      t.timestamps
    end
  end
end
