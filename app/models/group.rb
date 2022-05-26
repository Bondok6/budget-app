class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_deals, foreign_key: 'group_id', class_name: 'GroupDeal'

  validates :name, presence: true
  validates :icon, presence: true
end
