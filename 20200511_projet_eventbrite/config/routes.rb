Rails.application.routes.draw do
 root 'events#index'

  devise_for :users
  resources :events
  resources :users, :only => [:show, :edit, :update]

  resources :events do
    resources :attendances, :only => [:new, :create, :index]
    resources :pictures, :only => [:create]
  end
end
