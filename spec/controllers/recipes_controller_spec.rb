require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
 describe "recipes#index action" do
  it "should show the recipes created in the databse"
 # @recipes = Recipe.all
  get :index
  expect(recipes).not_to be_empty
 end
end
