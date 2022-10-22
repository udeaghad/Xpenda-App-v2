require 'rails_helper'

RSpec.describe 'CategoryExpenditures', type: :request do
  before :each do
    sign_in create(:user)
    category = create(:category)
    get category_category_expenditures_path(category.id)
  end

  it 'returns http success' do
    expect(response).to have_http_status(:success)
  end

  it 'renders index template ' do
    expect(response).to render_template('index')
  end

  it 'page contains the correct text' do
    expect(response.body).to include('Transaction Details')
  end

  it 'page contains the correct text' do
    expect(response.body).to include('Total')
  end
end
