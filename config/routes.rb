Rails.application.routes.draw do

	# get 'orders/index'
	# get 'orders/show'
	# get 'orders/new'
	# get 'carts/show'
	# get 'products/index'
	# get 'products/new'
	# get 'products/edit'
	
	root 'products#index'

	get 'carts/:id' => "carts#show", as: "cart"
	delete 'carts/:id' => "carts#destroy"

	post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
	post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
	post 'line_items' => "line_items#create"
	get 'line_items/:id' => "line_items#show", as: "line_item"
	delete 'line_items/:id' => "line_items#destroy"

	resources :products
	resources :orders

	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'template#index'
  # post '/', to: 'template#call_to_action'
  # get '/shop', to: 'template#shop_full'
  # get '/about', to: 'template#about'
  # get '/single/:id', to: 'template#showproduct'
	# get '/single', to: 'template#showproduct'
	# get '/item', to: 'template#itemtest'
	# get '/show/:id', to: 'template#show_test', as: 'show'
	get '/sooory', to: 'template#404'
	end
