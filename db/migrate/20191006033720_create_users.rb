class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :nickname
      t.date :birthday
      t.integer :prefecture

      t.timestamps
    end
  end
end
