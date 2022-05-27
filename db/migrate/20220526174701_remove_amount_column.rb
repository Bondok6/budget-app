class RemoveAmountColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :deals, :amount
    add_column :deals, :amount, :integer
  end
end
