class CreateGroupDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :group_deals do |t|
      t.integer :group_id
      t.integer :deal_id
      t.timestamps
    end
  end
end
