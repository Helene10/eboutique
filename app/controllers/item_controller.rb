class ItemController < ApplicationController

def index
	@item = Item.all
  @ord_item = current_order.ord_items.new
end

end
