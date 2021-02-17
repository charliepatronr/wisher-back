class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.string :name
      t.text :description
      t.string :img
      t.integer :price
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
