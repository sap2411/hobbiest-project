Rails.application.routes.draw do
  resources :categories
  resources :materials
  resources :hobbies
  resources :users
  resources :hobby_materials, only: [:destroy]
  root 'welcome#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/analytics' => 'welcome#analytics'
  get '/↑↑↓↓←→←→BA' => 'welcome#admin'
end
