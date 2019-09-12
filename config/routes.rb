Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'
  resource :recipes do
    resources :recipes, only: :create
  end
  get 'about', to: 'recipes#about'
  get '/search', to: 'search#index', as: 'search'
  get '/searchByIngredients', to: 'recipes#search_by_ingredients', as: 'searchByIngredients'
  get '/searchByName', to: 'recipes#search_by_name', as: 'searchByName'
  get '/searchWinePairing', to: 'recipes#search_wine_pairing', as: 'searchWinePairing'
  get '/searchVideo', to: 'recipes#search_video', as: 'searchVideo'
  get '/convertUnits', to: 'recipes#convert_units', as: 'convertUnits'
  get '/searchCalories', to: 'recipes#search_calories', as: 'searchCalories'
  get '/searchRecipeId', to: 'recipes#search_recipe_id', as: 'searchRecipeId'
  get '/searchgetFoodTrivia', to: 'recipes#get_food_trivia', as: 'getFoodTrivia'
  get '/searchQuickAnswer', to: 'recipes#search_quick_answer', as: 'searchQuickAnswer'
  get '/searchNutritionInfo', to: 'recipes#search_nutrition_info', as: 'searchNutritionInfo'
end


