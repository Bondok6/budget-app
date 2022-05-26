class RemoveDealIdFromGroups < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :deal_id
  end
end
