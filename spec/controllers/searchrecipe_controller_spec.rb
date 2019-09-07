require 'rails_helper'

RSpec.describe SearchrecipeController, type: :controller do

    describe "searchByName" do
      it "goes to /search and enters cranberries, hits search and show results"
    expect(response).to have_http_status(:success)
   end


# THIS TEST is written correctly, but route is not on searchrecipe controller
 describe "get about page"
 it "renders the :about view" do
   get :about
   response.should render_template :about
end


end

