require 'uri'
require 'net/http'
require 'openssl'

class SearchrecipeController <  ApplicationController

  def searchByName(name)
    # uses 'search site content'
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=" + name)

    response = conn.get do |req|
        req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
        req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
    end
    array_response = eval(response.body)
    puts "-------------------START ----------------------------"
    puts eval(response.body)
    puts "Array size " + array_response.length.to_s
    puts "-------------------END ----------------------------"
    return array_response
  end

  def searchbyingredient (ingredients)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?number=5&ranking=1&ignorePantry=false&ingredients=" + ingredients)

    response = conn.get do |req|
        req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
        req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
    end
    array_response = eval(response.body)
    puts "-------------------START ----------------------------"
    puts eval(response.body)
    puts "Array size " + array_response.length.to_s
    puts "-------------------END ----------------------------"
    return array_response
  end

  def searchWinePairing (food)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/pairing?maxPrice=50&food=" + food)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
    end

    array_response = eval(response.body)
    puts "-------------------START ----------------------------"
    puts array_response.class
    puts response.body.class
    puts "-------------------END ----------------------------"
    return array_response
  end

  def searchvideo(videoname)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/videos/search?query=" + videoname)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
    end

  def convertUnits(unit, ingredientname, targetunit)
    puts " "
    puts " "
    puts " "
    puts unit
    puts " "
    puts ingredientname
    puts " "
    puts targetunit
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/convert?sourceUnit=cups&sourceAmount=" + unit + "&ingredientName=" + ingredientname + "&targetUnit=" + targetunit )
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
  end

  def searchCalories(numbercalories, time)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=" + numbercalories + "&timeFrame=" + time)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
  end

  #unclear if it takes an argument, see test
  def searchRecipeId(aNumber)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/" + aNumber + "/similar")
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
    end

      #simple get/text. Need array lines?
  def getFoodTrivia
    puts
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/trivia/random")
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end

      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
  end

  def searchQuickAnswer(search)
      conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/quickAnswer?q=" + search)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
  end

  def searchNutritionInfo(search)
    conn = Faraday.new(:url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/guessNutrition?title=" + search)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com',
      req.headers['x-rapidapi-key'] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'
      end
      array_response = eval(response.body)
      puts "-------------------START ----------------------------"
      puts eval(response.body)
      puts "Array size " + array_response.length.to_s
      puts "-------------------END ----------------------------"
      return array_response
  end




end


