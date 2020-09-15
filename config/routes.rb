Rails.application.routes.draw do

  root 'dashboard#show'

  #get 'sign_up', to: 'users/new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'init', to: 'tasks#init'
  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  #resources :tasks
  
end
