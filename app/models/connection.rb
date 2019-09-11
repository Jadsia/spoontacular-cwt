#require 'faraday'
#require 'json'
#require 'net/http'

#class Connection
  #BASE = 'http://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'

  #def self.api
    #Faraday.new(url: BASE) do |faraday|
      #faraday.response :logger
      #faraday.adapter Faraday.default_adapter
      #faraday.headers['Content-Type'] = 'application/json'
      #faraday.headers['X-RAPID-APIKEY'] = ENV['X-RAPID-APIKEY']
    #end
  #end
#end

#get quick answer with user search

#url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/quickAnswer?q=")

#http = Net::HTTP.new(url.host, url.port)
#http.use_ssl = true
#http.verify_mode = OpenSSL::SSL::VERIFY_NONE

#request = Net::HTTP::Get.new(url)
#request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
#request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

#response = http.request(request)
#puts response.read_body

#convert units

#url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/convert?sourceUnit=cups&sourceAmount=2.5&ingredientName=flour&targetUnit=grams")

#http = Net::HTTP.new(url.host, url.port)
#http.use_ssl = true
#http.verify_mode = OpenSSL::SSL::VERIFY_NONE

#request = Net::HTTP::Get.new(url)
#request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
#request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

#response = http.request(request)
#puts response.read_body


