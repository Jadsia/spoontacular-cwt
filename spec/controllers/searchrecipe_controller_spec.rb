require 'rails_helper'

RSpec.describe SearchrecipeController, type: :controller do


#   describe SearchrecipeController do
#     describe "searchByName" do
#       it "goes to /searchByName and enters cranberries, hits search"
#       it "shows results"
#     #expect(response.status).to eq(200)
#     #expect(response).to have_http_status(:success)
#   end
# end

describe "get about page"
it "renders the :about view" do
  get :about
  response.should render_template :about
end


end

