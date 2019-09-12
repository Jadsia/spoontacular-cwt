require 'rails_helper'

RSpec.describe SearchrecipeController, type: :controller do
    it 'should return at least one trivia fact back' do
      controller.get_food_trivia()[:text].length > 0
  end

  it 'should return results for search term' do
    controller.search_by_name("cake")[:text] && controller.search_by_name("cake")[:text].length > 0
end

it 'should return results for search term' do
  controller.search_by_ingredient("onions") && controller.search_by_ingredient("onions").length > 0
end

it 'should return results for search term' do
  controller.search_wine_pairing("fish")[:text] && controller.search_wine_pairing("fish")[:text].length > 0
end

it 'should return results for search term' do
  controller.search_video("milk")[:text] && controller.search_video("milk")[:text].length > 0
end

it 'should return results for search term' do
  controller.convert_units("2", "flour", "grams")[:answer] && controller.convert_units("2", "flour", "grams")[:answer].length > 0
end

it 'should return results for search term' do
  controller.search_calories("2000", "day")[:text] && controller.search_calories("2000", "day")[:text].length > 0
end

it 'should return results for search term' do
  controller.search_recipe_id("25643") && controller.search_recipe_id("25643").length > 0
end

it 'should return results for search term' do
  controller.search_quick_answer("how much sugar is in a banana")[:text] && controller.search_quick_answer("how much sugar is in a banana")[:text].length > 0
end

it 'should return results for search term' do
  controller.search_nutrition_info("pie")[:text] && controller.search_nutrition_info("pie")[:text].length > 0
end

end

