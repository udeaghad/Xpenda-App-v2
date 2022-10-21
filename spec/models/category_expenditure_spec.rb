require 'rails_helper'

RSpec.describe CategoryExpenditure, type: :model do
  before :each do
    @category_expenditure = CategoryExpenditure.new(category_id: 1, expenditure_id: 1)
  end

  it 'amount must not be blank.' do
    @category_expenditure.category_id = nil
    expect(@category_expenditure).to_not be_valid
  end

  it 'name must not be blank.' do
    @category_expenditure.expenditure_id = nil
    expect(@category_expenditure).to_not be_valid
  end

end
