class RecipeQuery


  def self.search_by_name(name)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/food/site/search?query=" + name)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_by_ingredients(ingredients)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/findByIngredients?number=5&ranking=1&ignorePantry=false&ingredients=" + ingredients)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_wine_pairing(food)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/food/wine/pairing?maxPrice=50&food=" + food)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_video(videoname)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/food/videos/search?query=" + videoname)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.convert_units(unit, ingredientname, targetunit)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/convert?sourceUnit=cups&sourceAmount=" + unit + "&ingredientName=" + ingredientname + "&targetUnit=" + targetunit )

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_calories(numbercalories, time)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/mealplans/generate?targetCalories=" + numbercalories + "&timeFrame=" + time)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_recipe_id(aNumber)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/" + aNumber + "/similar")

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end


  def self.get_food_trivia
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/food/trivia/random")

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_quick_answer(search)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/quickAnswer?q=" + search)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end

  def self.search_nutrition_info(search)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/recipes/guessNutrition?title=" + search)
    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end
end
