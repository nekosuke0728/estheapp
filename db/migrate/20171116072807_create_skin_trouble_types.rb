class CreateSkinTroubleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :skin_trouble_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
