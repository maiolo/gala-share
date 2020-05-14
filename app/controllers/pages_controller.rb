class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @products = Product.where(user_id: @user.id)
    @deals_buyer = Deal.where(user_id: @user.id)
    @deals_vendor = []
    @products.each do |product|
      @deals_vendor << Deal.find_by(product_id: product.id)
    end
  end
end 
