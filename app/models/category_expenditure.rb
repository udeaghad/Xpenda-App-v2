class CategoryExpenditure < ApplicationRecord
  belongs_to :expenditure, class_name: 'Expenditure'
  belongs_to :category, class_name: 'Category'

  validates :expenditure_id, presence: true
  validates :category_id, presence: true

  def update_categories_total
    category.update(total: expenditure.amount + category.total) if expenditure.amount.present?
  end

  def update_categories_total_after_destroy
    category.update(total: category.total - expenditure.amount) if expenditure.amount.present?
  end
end
