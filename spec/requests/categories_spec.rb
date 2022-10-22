require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  before :each do
    sign_in create(:user)
    get categories_path
  end

  it 'returns http success' do
    expect(response).to have_http_status(:success)
  end

  it 'renders index template ' do
    expect(response).to render_template('index')
  end

  it 'page contains the correct text' do
    expect(response.body).to include('Transaction Categories')
  end
end
