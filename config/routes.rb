require 'api_constraints'

Rails.application.routes.draw do
  scope module: :v1, constraints: ApiConstraints.new(version: 1), defaults: {format: 'json'} do
    resources :golfers, only: [:show, :update, :index]
    resources :teams, only: [:show, :update, :create]
  end

  mount_devise_token_auth_for 'Golfer', at: 'golfers/auth', controllers: { omniauth_callbacks: "golfers/omniauth_callbacks"}

  get '/auth/facebook/callback', to: 'sessions#create'
end
