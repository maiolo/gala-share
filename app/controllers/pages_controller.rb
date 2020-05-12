class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @products = Product.where(user_id: @user.id)
    @deals_buyer = Deals.where(user_id: @user.id)
    @deals_vendor = Deals.where(product_id: @product.id)
  end
end
