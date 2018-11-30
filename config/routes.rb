Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		get '/', to: 'template#index'
		post '/', to: 'template#call_to_action'
		get '/about', to: 'template#about'
		get '/error', to: 'template#404'
		get '/users/:id', to: 'users#show'
		resources :product
		resources :cart
		get '/empty', to: 'cart#empty'
end
