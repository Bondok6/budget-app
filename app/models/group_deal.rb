class GroupDeal < ApplicationRecord
  belongs_to :deal, class_name: 'Deal'
  belongs_to :group, class_name: 'Group'


  after_create :update_total_deals
  def update_total_deals
    group.increment!(:total_deals, deal.amount)
  end
end
