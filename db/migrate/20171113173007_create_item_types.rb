class CreateItemTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :item_types do |t|
      t.references :category, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
