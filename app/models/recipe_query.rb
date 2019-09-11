class RecipeQuery < ApplicationRecord


  def self.search_by_name(name)
    conn = Faraday.new(:url => "https://#{ENV['RAPID_HOST']}/food/site/search?query=" + name)

    response = conn.get do |req|
      req.headers['x-rapidapi-host'] = ENV['RAPID_HOST']
      req.headers['x-rapidapi-key'] = ENV['RAPID_KEY']
    end
    array_response = eval(response.body)
    return array_response
  end


end
