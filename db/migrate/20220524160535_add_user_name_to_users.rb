class AddUserNameToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :name
  end
end
