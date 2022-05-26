class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, foreign_key: 'author_id', class_name: 'Group'
  has_many :deals, foreign_key: 'author_id', class_name: 'Deal'

  validates :name, presence: true
end
