Rails.application.routes.draw do

  get 'dashboard/index'
  devise_for :users, :controllers => {  confirmations: 'confirmations', registrations: 'registrations' }
  resources :dashboard, only: [:index]
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
