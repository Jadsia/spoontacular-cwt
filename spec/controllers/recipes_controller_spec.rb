require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #getFoodTrivia" do
    before do
      get :getFoodTrivia
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchByName" do
    before do
      get :searchByName, :params => {:searchTerm => 'raisins'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchByIngredients" do
    before do
      get :searchByIngredients, :params => {:searchTerm => 'cranberries'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchWinePairing" do
    before do
      get :searchWinePairing, :params => {:searchTerm => 'fish'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchVideo" do
    before do
      get :searchVideo, :params => {:searchTerm => 'fish'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #convertUnits" do
    before do
      get :convertUnits, :params => {:searchTerm => '2, flour, grams'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchCalories" do
    before do
      get :searchCalories, :params => {:searchTerm => '2000, day'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchRecipeId" do
    before do
      get :searchRecipeId, :params => {:searchTerm => '24964'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchQuickAnswer" do
    before do
      get :searchQuickAnswer, :params => {:searchTerm => 'how much sugar is in a banana'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchNutritionInfo" do
    before do
      get :searchNutritionInfo, :params => {:searchTerm => 'muffins'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end


end
