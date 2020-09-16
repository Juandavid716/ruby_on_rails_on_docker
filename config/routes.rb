Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :twitters, path: 'home'
  root 'twitters#index'

  # #get 'sign_up', to: 'users/new'
  # get 'login', to: 'sessions#new'
  # get 'logout', to: 'sessions#destroy'
  # get 'init', to: 'tasks#init'
  # resources :sessions, only: [:create]
  # resources :users, only: [:new, :create]
  #resources :tasks
  
end
