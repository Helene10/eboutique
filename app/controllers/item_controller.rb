class ItemController < ApplicationController

def index
	@items = Item.all
  @ord_item = current_order.ord_items.new
end

end
