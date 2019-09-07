require 'rails_helper'

RSpec.describe SearchrecipeController, type: :controller do


  describe "recipes#about" do
    it "should display the about page" do
      get :about
    expect(response.status).to eq(200)
  end
end

  describe "recipes#searchByName" do
    it "should take a search term and return recipe results" do


end
