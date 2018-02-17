class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :auth, :integer
    add_column :users, :user_image, :string
    add_column :users, :profile, :text
  end
end
