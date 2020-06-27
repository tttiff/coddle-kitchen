Rails.application.routes.draw do
  resources :ingredient_hacks
  resources :hacks
  resources :ingredient_preservations
  resources :preservations
  resources :hack_categories
  resources :recipe_ingredients
  resources :measurements
  resources :ingredients
  resources :recipes
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
