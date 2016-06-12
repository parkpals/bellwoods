Rails.application.routes.draw do

  resource :profile

  devise_for :users
	
	root to: "home#index"

end
