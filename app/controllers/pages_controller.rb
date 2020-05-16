class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @remove_container = true
  end

  def dashboard
    @user = current_user
    @products = Product.where(user_id: @user.id)
    @deals_buyer = Deal.where(user_id: @user.id)
    @deals_vendor = []
    @products.each do |product|
      Deal.where(product_id: product.id).each do |deal|
        @deals_vendor << deal
      end
    end
  end
end 
