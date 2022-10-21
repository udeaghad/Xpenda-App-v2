class AddCategoryRefToCategoryExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_expenditures, :category, null: false, foreign_key: true
  end
end
