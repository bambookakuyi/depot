class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
    @page_title = "pro"
    @time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end
end
