# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "recipes#index"

  resources :recipes, only: :show
end

