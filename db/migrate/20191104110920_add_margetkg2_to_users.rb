class AddMargetkg2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prefecture, :text
  end
end
