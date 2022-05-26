class GroupDeal < ApplicationRecord
  belongs_to :group
  belongs_to :deal

  # after_create :total_deals_group
  # def total_deals_group
  #   group.increment!(:total_deals, deal.amount)
  # end
end
