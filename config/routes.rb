Rails.application.routes.draw do

  resource :profile
  resources :invites

  devise_for :users, :controllers => { registrations: 'users/registrations' }
	
  root to: "home#index"

end
