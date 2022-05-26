class AddForeignkeysToGroupDeals < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :group_deals, :groups, column: :group_id
    add_foreign_key :group_deals, :deals, column: :deal_id
  end
end
