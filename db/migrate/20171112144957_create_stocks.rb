class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.references :product, foreign_key: true
      t.date :date
      t.integer :quantity
      t.boolean :in_status

      t.timestamps
    end
  end
end
