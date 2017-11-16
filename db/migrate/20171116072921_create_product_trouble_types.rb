class CreateProductTroubleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_trouble_types do |t|
      t.references :product, foreign_key: true
      t.references :skin_trouble_type, foreign_key: true

      t.timestamps
    end
  end
end
