class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.references :news_type, foreign_key: true
      t.text :content
      t.integer :state

      t.timestamps
    end
  end
end
