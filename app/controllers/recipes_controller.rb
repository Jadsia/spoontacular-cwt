class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
   @recipes = Recipe.all
   puts "in index method"
   # also need to add code to show API index
   # returns array of objects {[]}
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def searchByName
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchByName(search)[:Recipes]
    puts "searchByName results type: "
    puts @results.class
  end

  def searchByIngredients
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchbyingredient(search)
  end

  def searchWinePairing
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchWinePairing(search)[:pairedWines]
    puts @results.class
  end

  def searchVideo
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchvideo(search)
    puts "searchByName results type: "
    puts @results.class
  end

  def convertUnits
    puts " "
    puts " "
    puts " "
    puts " "
    puts "In convertunits"
    search = params[:searchTerm]
    searchTerms = search.split(",")
    unit = searchTerms[0].strip
    ingredientname = searchTerms[1].strip
    targetunit = searchTerms[2].strip
    @results = SearchrecipeController.new.convertUnits(unit, ingredientname, targetunit)
    puts "convertunits results type: "
    puts @results.class
  end

  def searchCalories
    search = params[:searchTerm]
    searchTerms = search.split(",")
    numbercalories = searchTerms[0].strip
    time = searchTerms[1].strip
    @results = SearchrecipeController.new.searchCalories(numbercalories, time)
    puts "searchByName results type: "
    puts @results.class
  end

  #returns nil result, unclear if it takes argument
  def searchRecipeId
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchRecipeId(search)
    puts "searchByName results type: "
    puts @results.class
  end

        #simple get/text. Need any additional lines?
  def getFoodTrivia
    @results =   SearchrecipeController.new.getFoodTrivia
    puts "getFoodTrivia results type: "
    puts @results.class

  end

  def searchQuickAnswer
    search = params[:searchTerm]
    @results = SearchrecipeController.new.searchQuickAnswer(search)
    puts "quick answer results type: "
    puts @results.class
  end

  def searchnutritioninfo
    SearchrecipeController.new.searchnutritioninfo
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

  #works for all search functions?
  #def query
    #params.fetch(:query, {})
  #end

end


