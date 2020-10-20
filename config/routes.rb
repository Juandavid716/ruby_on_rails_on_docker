Rails.application.routes.draw do

  get 'dashboard/index'
 
  devise_for :users, :controllers => {  confirmations: 'confirmations', registrations: 'registrations' } 
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:username',     to: 'users#show',       via: 'get'
  resources :dashboard, only: [:index, :profile] 
  resources :twitters, path: 'home' 
  root 'twitters#index'
  get "profile" ,to: 'dashboard#profile'
  # #get 'sign_up', to: 'users/new'
  # get 'login', to: 'sessions#new'
  # get 'logout', to: 'sessions#destroy'
  # get 'init', to: 'tasks#init'
  # resources :sessions, only: [:create]
  # resources :users, only: [:new, :create]
  #resources :tasks
  
end
