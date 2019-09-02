Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'recipes#index'
  resource :recipes do
    resources :recipes, only: :create
  end
  get 'about', to: 'recipes#about'
  get '/search', to: 'recipes#searchByIngredients', as: 'search'
end


