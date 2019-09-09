class SearchRecipesController < ApplicationController

  def search_by_name(keyword)

    conn = Faraday.new(:url => "#{ENV['RAPID_HOST']}/food/site/search?query=" + keyword)
    response = conn.get do |req|

      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def search_by_ingredients

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def search_wine_pairing

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def search_video

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def convert_units

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def search_calories

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

  def search_recipe_id

    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
  end

 def get_food_trivia

  req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
 end

 def search_quick_answer

  req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
 end

 def search_nutrition_info

  req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
 end

end
