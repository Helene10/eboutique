Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		get '/', to: 'template#index'
		get '/shop/filter', to: 'template#shop_filter'
		get '/about', to: 'template#about'
		get '/single/:id', to: 'template#showproduct'
		get '/single', to: 'template#showproduct'
		get '/item', to: 'item#index'
		post '/item', to: 'ord_item#create'
		get '/cart', to: 'cart#show'


		get '/show/:id', to: 'template#show_test', as: 'show'
end
