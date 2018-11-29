class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:ord_id]
      Ord.find(session[:ord_id])
    else
      Ord.new
    end
  end

end
