class ExpendituresController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def new
    @expenditure = Expenditure.new
    respond_to do |format|
      format.html { render :new, locals: { post: @expenditure } }
    end
  end

  def create
    @expenditure = Expenditure.new(expenditure_params)     
    @expenditure.user_id = current_user.id
    # @expenditure.update_categories_total 
    @category_id = category_expenditures_params[:category_id]
    if @expenditure.save
      @category_expenditures = CategoryExpenditure.create(expenditure_id: @expenditure.id, category_id: @category_id)
      @category_expenditures.update_categories_total
      redirect_to category_category_expenditures_path(@category_expenditures.category_id)
    else
      render :new
    end
  end

  def destroy
    @expenditure = Expenditure.find(params[:id])
    @expenditure.destroy
    @expenditure.update_categories_total_after_destroy
    redirect_to category_category_expenditures_path(@expenditure.category_id)
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:name, :amount)
  end

  def category_expenditures_params
    params.require(:expenditure).permit(:category_id)
  end
end
