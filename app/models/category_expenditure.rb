class CategoryExpenditure < ApplicationRecord
  belongs_to :expenditure, class_name: 'Expenditure'
  belongs_to :category, class_name: 'Category'
end
