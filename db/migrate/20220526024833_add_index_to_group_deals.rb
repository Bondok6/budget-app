class AddIndexToGroupDeals < ActiveRecord::Migration[7.0]
  def change
    add_index :group_deals, :group_id
    add_index :group_deals, :deal_id
  end
end
