class CreateNewsTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :news_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
