class RenameOrderproductsToOrderProducts < ActiveRecord::Migration[5.1]
  def change
    rename_table :orderproducts, :order_products
  end
end
