class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :price
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
