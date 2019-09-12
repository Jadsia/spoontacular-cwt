# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'
  resource :recipes do
    resources :recipes, only: :create
  end
  get 'about', to: 'recipes#about'
  get '/search', to: 'search#index', as: 'search'
  get '/search_by_ingredients', to: 'recipes#search_by_ingredients', as: :search_by_ingredients
  get '/search_by_name', to: 'recipes#search_by_name', as: :search_by_name
  get '/search_wine_pairing', to: 'recipes#search_wine_pairing', as: :search_wine_pairing
  get '/search_video', to: 'recipes#search_video', as: :search_video
  get '/convert_units', to: 'recipes#convert_units', as: :convert_units
  get '/search_calories', to: 'recipes#search_calories', as: :search_calories
  get '/search_recipe_id', to: 'recipes#search_recipe_id', as: :search_recipe_id
  get '/get_food_trivia', to: 'recipes#get_food_trivia', as: :get_food_trivia
  get '/search_quick_answer', to: 'recipes#search_quick_answer', as: :search_quick_answer
  get '/search_nutrition_info', to: 'recipes#search_nutrition_info', as: :search_nutrition_info
end
