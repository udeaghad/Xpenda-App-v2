class CategoryExpendituresController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @expenditures = @category.category_expenditures.all.order(created_at: :desc)
  end

end
