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
  get '/searchByName', to: 'recipes#searchByName', as: 'searchByName'
  get '/searchWinePairing', to: 'recipes#searchWinePairing', as: 'searchWinePairing'
  get '/searchVideo', to: 'recipes#searchVideo', as: 'searchVideo'
  get '/convertUnits', to: 'recipes#convertUnits', as: 'convertUnits'
end


