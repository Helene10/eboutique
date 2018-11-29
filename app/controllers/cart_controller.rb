class CartController < ApplicationController
  def show
  	@ord_items = current_order.ord_items
  end
end
