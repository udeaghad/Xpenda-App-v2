require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @category = Category.new(name: 'Food', total: 0, user_id: 1, icon: 'fas fa-utensils')
  end

  before { subject.save }

  it 'name must not be blank.' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'Icon unit must not be blank.' do
    @category.icon = nil
    expect(@category).to_not be_valid
  end

  it 'total must not be blank.' do
    @category.total = nil
    expect(@category).to_not be_valid
  end
end
