class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
   @recipes = Recipe.all
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def search_by_name
    search = params[:searchTerm]
    @results = RecipeQuery.search_by_name(search)[:Recipes]
  end

  def search_by_ingredients
    search = params[:searchTerm]
    @results = RecipeQuery.search_by_ingredients(search)
  end

  def search_wine_pairing
    search = params[:searchTerm]
    @results = RecipeQuery.search_wine_pairing(search)
  end

  def search_video
    search = params[:searchTerm]
    @results = RecipeQuery.search_video(search)
  end

  def convert_units
    search = params[:searchTerm]
    searchTerms = search.split(",")
    unit = searchTerms[0].strip
    ingredientname = searchTerms[1].strip
    targetunit = searchTerms[2].strip
    @results = RecipeQuery.convert_units(unit, ingredientname, targetunit)
  end

  def search_calories
    search = params[:searchTerm]
    searchTerms = search.split(",")
    numbercalories = searchTerms[0].strip
    time = searchTerms[1].strip
    @results = RecipeQuery.search_calories(numbercalories, time)
  end

  def search_recipe_id
    search = params[:searchTerm]
    @results = RecipeQuery.search_recipe_id(search)
  end

  def get_food_trivia
    @results = RecipeQuery.get_food_trivia
  end

  def search_quick_answer
    search = params[:searchTerm]
    @results = RecipeQuery.search_quick_answer(search)
  end

  def search_nutrition_info
    search = params[:searchTerm]
    @results = RecipeQuery.search_nutrition_info(search)
  end

  def new
    @recipe = Recipe.new
  end


  def create
    current_user.recipes.create(recipe_params)
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :directions, :search)
  end

end


