require 'rails_helper'

RSpec.describe SearchrecipeController, type: :controller do
    it 'should return at least one trivia fact back' do
      controller.getFoodTrivia()[:text].length > 0
  end

  it 'should return results for search term' do
    controller.searchByName("cake")[:text] && controller.searchByName("cake")[:text].length > 0
end

it 'should return results for search term' do
  controller.searchbyingredient("onions") && controller.searchbyingredient("onions").length > 0
end

it 'should return results for search term' do
  controller.searchWinePairing("fish")[:text] && controller.searchWinePairing("fish")[:text].length > 0
end

it 'should return results for search term' do
  controller.searchvideo("milk")[:text] && controller.searchvideo("milk")[:text].length > 0
end

it 'should return results for search term' do
  controller.convertUnits("2", "flour", "grams")[:answer] && controller.convertUnits("2", "flour", "grams")[:answer].length > 0
end

it 'should return results for search term' do
  controller.searchCalories("2000", "day")[:text] && controller.searchCalories("2000", "day")[:text].length > 0
end

it 'should return results for search term' do
  controller.searchRecipeId("25643") && controller.searchRecipeId("25643").length > 0
end

it 'should return results for search term' do
  controller.searchQuickAnswer("how much sugar is in a banana")[:text] && controller.searchQuickAnswer("how much sugar is in a banana")[:text].length > 0
end

it 'should return results for search term' do
  controller.searchNutritionInfo("pie")[:text] && controller.searchNutritionInfo("pie")[:text].length > 0
end

end

