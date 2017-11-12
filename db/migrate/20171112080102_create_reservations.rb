class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id,        null: false, default: ""
      t.integer :staff_id
      t.integer :esthe_menu_id,  null: false, default: ""
      t.datetime :start_at,      null: false, default: ""
      t.text :comment

      t.timestamps
    end
  end
end
