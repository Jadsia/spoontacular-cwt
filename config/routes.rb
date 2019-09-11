Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'
  resource :recipes do
    resources :recipes, only: :create
  end
  get 'about', to: 'recipes#about'
  get '/search', to: 'search#index', as: 'search'
  get '/searchByIngredients', to: 'recipes#searchByIngredients', as: 'searchByIngredients'
  get '/searchByName', to: 'recipes#search_by_name', as: 'searchByName'
  get '/searchWinePairing', to: 'recipes#searchWinePairing', as: 'searchWinePairing'
  get '/searchVideo', to: 'recipes#searchVideo', as: 'searchVideo'
  get '/convertUnits', to: 'recipes#convertUnits', as: 'convertUnits'
  get '/searchCalories', to: 'recipes#searchCalories', as: 'searchCalories'
  get '/searchRecipeId', to: 'recipes#searchRecipeId', as: 'searchRecipeId'
  get '/searchgetFoodTrivia', to: 'recipes#getFoodTrivia', as: 'getFoodTrivia'
  get '/searchQuickAnswer', to: 'recipes#searchQuickAnswer', as: 'searchQuickAnswer'
  get '/searchNutritionInfo', to: 'recipes#searchNutritionInfo', as: 'searchNutritionInfo'
end


