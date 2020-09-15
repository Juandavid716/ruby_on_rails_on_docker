Rails.application.routes.draw do

  root 'dashboard#show'

  #get 'sign_up', to: 'users/new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  #resources :tasks
  
end
