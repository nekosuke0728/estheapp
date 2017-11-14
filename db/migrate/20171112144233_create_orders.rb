class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :total_price
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
