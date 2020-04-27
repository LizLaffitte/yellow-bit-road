Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get '/signup', to: "users#new", as: 'signup'
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/auth/facebook/callback' => 'sessions#create'
  post '/logout', to: "sessions#destroy"
  get '/courses/python', to: "courses#python"
  resources :users, only: [:show, :destroy] do
    resources :roads, only: [:index]
  end
  
  resources :roads do
    resources :checkpoints, only: [:new, :create, :show, :destroy, :edit, :update]
  end
  
  resources :courses do
    resources :checkpoints, only: [:new, :create]
  end

  root 'roads#index'
end
