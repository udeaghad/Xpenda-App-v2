class Expenditure < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :category_expenditures, dependent: :destroy, foreign_key: 'expenditure_id'
  has_many :categories, through: :category_expenditures, dependent: :destroy
  
  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than_equal_to: 0 }
  # validates :category_id, presence: true
  # validates :user_id, presence: true

  def update_categories_total
    category.update(total: amount + category.total) if amount.present?
  end

  def update_categories_total_after_destroy
    category.update(total: category.total - amount) if amount.present?
  end
end
