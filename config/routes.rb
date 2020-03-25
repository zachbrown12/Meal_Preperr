Rails.application.routes.draw do
  resources :tracked_meals
  resources :available_meals
  resources :users
  resources :recipe_details
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'sessions/new', to: 'sessions#new', as: "new_login"

  post  'sessions', to: 'sessions#create', as: "login"

  delete  'sessions', to: 'sessions#destroy', as: "destroy_session"




end
