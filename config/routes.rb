Rails.application.routes.draw do

  resources :invites

  devise_for :users
	
	root to: "home#index"

end
