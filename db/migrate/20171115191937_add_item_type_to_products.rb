class AddItemTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :item_type, foreign_key: true
  end
end
