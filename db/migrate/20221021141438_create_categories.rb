class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.decimal :total, default: 0.0

      t.timestamps
    end
  end
end
