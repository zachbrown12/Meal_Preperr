Rails.application.routes.draw do
  resources :recipe_details
  resources :recipes
  resources :users do
    resources :tracked_meals
    resources :available_meals
  end
  resources :ingredients
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'grocerylist', to: 'tracked_meals#grocerylist'
  get 'sessions/new', to: 'sessions#new', as: "new_login"

  post  'sessions', to: 'sessions#create', as: "login"

  delete  'sessions', to: 'sessions#destroy', as: "destroy_session"




end
