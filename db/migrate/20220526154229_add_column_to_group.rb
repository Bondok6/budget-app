class AddColumnToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :total_deals, :integer
  end
end
