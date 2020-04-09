Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get '/signup', to: "users#new", as: 'signup'
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  resources :users, only: [:show, :destroy] do
    resources :roads
  end
  resources :roads do
    resources :checkpoints
  end
  resources :checkpoints, only: [:new, :create]
  resources :courses

  root 'roads#index'
end
