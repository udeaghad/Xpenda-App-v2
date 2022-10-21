class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_expenditures, dependent: :destroy, foreign_key: 'category_id'
  has_many :expenditures, through: :category_expenditures, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true, length: { maximum: 500 }
  
end
