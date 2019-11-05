class AddMargeafterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prefecture_id, :integer
    add_column :users, :birthday, :date
    add_column :users, :created_at, :timestamp
    add_column :users, :updated_at, :timestamp
  end
end
