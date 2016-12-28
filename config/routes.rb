Rails.application.routes.draw do
  # devise_for :users
  get 'home/index'

  match "users/sign_in"=>"users#sign_in",via: :post,format: :json
  match "users/sign_up"=>"users#sign_up",via: :post,format: :json
  match "users/sign_out" => "users#sign_out",via: :post,format: :json
  match "notifications/create"=>"notifications#create",via: :post,format: :json
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"

	get	'notifications/index'
	# post 'notifications/create'

end

