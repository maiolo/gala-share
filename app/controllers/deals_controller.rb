class DealsController < ApplicationController
  before_action :set_deal, only: [:show, :update]

  def create
    @product = Product.find(params[:product_id])
    @deal = Deal.new
    @deal.product = @product
    @deal.user = current_user
    @deal.save
    raise
    redirect_to dashboard_path
  end

  def update
    if @deal.approved == false
      @deal.approved = true
      @deal.save
    else
      @deal.approved = false
      @deal.save
    end
    redirect_to dashboard_path
  end

  def show
  end

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def deals_params
    params.require(:deal).permit(:product_id)
  end
end
