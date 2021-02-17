class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :address
      t.integer :friendship_id
      t.date :birthday
      t.string :username

      t.timestamps
    end
  end
end
