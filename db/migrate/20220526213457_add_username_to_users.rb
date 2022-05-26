class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name
    add_column :users, :name, :string
  end
end
