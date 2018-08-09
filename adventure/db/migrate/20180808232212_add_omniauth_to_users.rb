class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_index :users, :name
    add_column :users, :uid, :string
    add_index :users, :uid
    add_column :users, :image, :string
    add_index :users, :image
  end
end
