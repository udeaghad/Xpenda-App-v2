require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'John', email: 'john@example.com', password: 'password')
  end

  it 'name must not be blank.' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'email must not be blank.' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'password must not be blank.' do
    @user.password = nil
    expect(@user).to_not be_valid
  end
end
