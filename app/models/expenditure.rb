class Expenditure < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_expenditures, dependent: :destroy, foreign_key: 'expenditure_id'
  has_many :categories, through: :category_expenditures, dependent: :destroy, foreign_key: 'expenditure_id'
  
  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than_equal_to: 0 }

    
end
