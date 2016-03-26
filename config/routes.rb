Rails.application.routes.draw do
  root 'welcome#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create]
  resources :projects, only: [:new, :create, :show]
end
