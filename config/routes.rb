Rails.application.routes.draw do

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/show'

  devise_for :users
	
	root to: "home#index"

end
