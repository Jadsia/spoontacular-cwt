class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
   @recipes = Recipe.all
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def searchByName
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchByName(search)[:Recipes]
    puts "searchByName results type: "
  end

  def searchByIngredients
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchbyingredient(search)
  end

  def searchWinePairing
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchWinePairing(search)
  end

  def searchVideo
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchvideo(search)
  end

  def convertUnits
    search = params[:searchTerm]
    searchTerms = search.split(",")
    unit = searchTerms[0].strip
    ingredientname = searchTerms[1].strip
    targetunit = searchTerms[2].strip
    @results = SearchrecipeController.new.convertUnits(unit, ingredientname, targetunit)
  end

  def searchCalories
    search = params[:searchTerm]
    searchTerms = search.split(",")
    numbercalories = searchTerms[0].strip
    time = searchTerms[1].strip
    @results = SearchrecipeController.new.searchCalories(numbercalories, time)
  end

  #returns nil result, unclear if it takes argument
  def searchRecipeId
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchRecipeId(search)
  end

        #simple get/text. Need any additional lines?
  def getFoodTrivia
    @results =   SearchrecipeController.new.getFoodTrivias
  end

  def searchQuickAnswer
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchQuickAnswer(search)
  end

  def searchNutritionInfo
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchNutritionInfo(search)
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


