Rails.application.routes.draw do

  resource :profile
  resources :invites

  devise_for :users
	
	root to: "home#index"

end
