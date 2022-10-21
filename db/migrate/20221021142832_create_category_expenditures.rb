class CreateCategoryExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :category_expenditures do |t|

      t.timestamps
    end
  end
end
