Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create]
end
