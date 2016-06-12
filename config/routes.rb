Rails.application.routes.draw do

  get 'invites/index'

  get 'invites/new'

  get 'invites/show'

  devise_for :users
	
	root to: "home#index"

end
