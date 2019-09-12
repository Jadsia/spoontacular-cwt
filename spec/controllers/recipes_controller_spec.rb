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

  describe "GET #get_food_trivia" do
    before do
      get :get_food_trivia
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_by_name" do
    before do
      get :search_by_name, :params => {:searchTerm => 'raisins'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_by_ingredients" do
    before do
      get :search_by_ingredients, :params => {:searchTerm => 'cranberries'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_wine_pairing" do
    before do
      get :search_wine_pairing, :params => {:searchTerm => 'fish'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_video" do
    before do
      get :search_video, :params => {:searchTerm => 'fish'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #convert_units" do
    before do
      get :convert_units, :params => {:searchTerm => '2, flour, grams'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_calories" do
    before do
      get :search_calories, :params => {:searchTerm => '2000, day'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_recipe_id" do
    before do
      get :search_recipe_id, :params => {:searchTerm => '24964'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_quick_answer" do
    before do
      get :search_quick_answer, :params => {:searchTerm => 'how much sugar is in a banana'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_nutrition_info" do
    before do
      get :search_nutrition_info, :params => {:searchTerm => 'muffins'}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end


end
