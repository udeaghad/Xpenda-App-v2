class AddExpenditureRefToCategoryExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_expenditures, :expenditure, null: false, foreign_key: true
  end
end
