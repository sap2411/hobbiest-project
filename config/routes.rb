Rails.application.routes.draw do
  resources :categories
  resources :materials
  resources :hobbies
  resources :users
  root 'welcome#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/analytics' => 'welcome#analytics'
  end
