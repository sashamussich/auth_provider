Rails.application.routes.draw do
  # Easier to make GET request from the client
  devise_for :users, sign_out_via: [:get, :delete],
              controllers: { omniauth_callbacks: 'callbacks' }

  root 'home#index'

  # Provider stuff
  match '/auth/sso/authorize' => 'auth#authorize', via: :all
  match '/auth/sso/access_token' => 'auth#access_token', via: :all
  match '/auth/sso/user' => 'auth#user', via: :all
  match '/oauth/token' => 'auth#access_token', via: :all

end
