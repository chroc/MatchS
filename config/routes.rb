Rails.application.routes.draw do

  root to: "landing_page#index"
  get "/home", to: "landing_page#home"
  get "/login", to: "landing_page#login"
  post "/session/create", to: "sessions#create"
  post "/session/destroy", to: "sessions#destroy"
  resources :comments
  resources :matches
  resources :fields
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
