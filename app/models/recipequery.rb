require 'net/http'
require 'json'
require 'faraday'

class Recipequery < ApplicationRecord
  base_uri 'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'

  def index
    @queries = RecipeQuery.search(params[:id])
  end

  def get_data(name)
    self.class.get('food/site/search?query=' + name)
    get_data.parsed_response
  end

url = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=" + name
uri = URI(url)
response = Net::HTTP.get(uri)
JSON.parse(response)
end

url = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=" + name

conn = Faraday.new(url: url) do |faraday|
  faraday.adapter Faraday.default_adapter
  faraday.response :json
end

response = conn.get('search', type: 'artist', q: 'tycho')
response.body

