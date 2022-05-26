class Deal < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_deals, foreign_key: 'deal_id', class_name: 'GroupDeal'

  validates :name, presence: true
  validates :amount, presence: true, numericality: true
end
