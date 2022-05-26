class Deal < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :group_deals, dependent: :destroy
  has_many :groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: true
end
