require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  before :each do
    sign_in create(:user)
    @category = create(:category)
  end

  it 'returns http success' do
    expect(response).to have_http_status(:success)
  end

  it 'renders index template ' do
    get :index
    expect(response).to render_template(:index)
  end

  it 'assigns all categories to @categories' do
    get :index
    expect(assigns(:categories)).to eq(Category.all)
  end
end
