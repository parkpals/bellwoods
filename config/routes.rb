Rails.application.routes.draw do

  get 'pages/expired'

  resource :profile
  resources :invites

  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks" }
	
  root to: "home#index"

  devise_scope :user do
    match '/twitter_signup' => 
          'users/omniauth_callbacks#twitter_submit', via: [:post, :patch]
  end

end
