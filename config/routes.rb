Rails.application.routes.draw do
  resources :recipe_details
  resources :recipes
  resources :users do
    resources :tracked_meals
    resources :available_meals
  end
  resources :ingredients
  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  delete '/sessions', to: 'sessions#destroy', as: 'end_session'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'sessions/new', to: 'sessions#new', as: "new_login"

  post  'sessions', to: 'sessions#create', as: "login"

  delete  'sessions', to: 'sessions#destroy', as: "destroy_session"




end
