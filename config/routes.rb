Rails.application.routes.draw do
  resources :tracked_meals
  resources :available_meals
  resources :users
  resources :recipe_details
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
