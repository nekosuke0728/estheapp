class CreateEstheMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :esthe_menus do |t|
      t.string :name,         null: false, default: ""
      t.integer :time_frame,  null: false, default: ""
      t.text :description,    null: false, default: ""
      t.integer :price,       null: false, default: ""

      t.timestamps
    end
  end
end
