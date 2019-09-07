class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :from_area_id
      t.integer :age
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token

      t.timestamps
    end
  end
end