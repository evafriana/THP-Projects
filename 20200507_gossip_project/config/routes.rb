Rails.application.routes.draw do
  root 'pages#home'
  get 'team', to: 'pages#team'
  get 'contact', to: 'pages#contact'
  resources :gossips
  resources :users
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
end
