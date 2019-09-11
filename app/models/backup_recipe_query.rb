#frozen_string_literal: true
# require 'net/http'
# require 'json'
require 'faraday'
require 'uri'
require 'net/http'
require 'openssl'

class Recipequery < ApplicationRecord

  def self.search_by_name(name)
    conn = Faraday.new(:url => "#{ENV['RAPID_HOST']}/food/site/search?query=" + name)

    response = conn.get do |req|
    req.headers['x-rapidapi-host'] = ENV['RAPID_HOST'],
    req.headers['x-rapidapi-key'] = ENV ['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end


   #def index
     #@queries = RecipeQuery.search(params[:id])
   #end

#   def get_data(name)
#     self.class.get('food/site/search?query=' + name)
#     get_data.parsed_response
#   end

# url = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=" + name
# uri = URI(url)
# response = Net::HTTP.get(uri)
# JSON.parse(response)
# end

# url = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=" + name
