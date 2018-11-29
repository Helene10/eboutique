class OrdItemController < ApplicationController
  def create
  	@order = current_order
    @item = @order.ord_items.new
    @order.save
    session[:ord_id] = @order.id
    redirect_to item_path
  end

   private

  def item_params
    params.require(:ord_item).permit(:quantity, :item_id)
  end
end
