class CreatePosts < ActiveRecord::Migration[5.2]
  
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.integer :category_id
      t.integer :prefecture_id
      t.integer :accept_number
      t.integer :from_age
      t.integer :to_age
      t.integer :view_period

      t.timestamps
    end
  end
end
