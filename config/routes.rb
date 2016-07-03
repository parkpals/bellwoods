Rails.application.routes.draw do

  resource :profile
  resources :invites

  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks" }
	
  root to: "home#index"

end
