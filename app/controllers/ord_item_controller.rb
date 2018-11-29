class OrdItemController < ApplicationController
  def create
  	
    @order = current_order
    @ord_item = @order.ord_items.new(ord_item_params)
    @order.save
    @order[:user_id] = current_order.id
    redirect_to item_path
  end

   private

  def ord_item_params
    params.require(:ord_item).permit(:quantity, :item_id)
  end
end
