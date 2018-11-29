class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :current_order

	def current_order
    @order = Ord.find_by_user_id(current_user.id)
    if @order.nil?
       @order = Ord.new 
    end
    
 end

end 
